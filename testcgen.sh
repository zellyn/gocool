RUNTIME_FILE=/Users/zellyn/go/src/github.com/zellyn/gocool/resources/trap.handler
tempfoo=`basename $0`
rm -rf $TMPDIR/$tempfoo.*
OUTDIR=`mktemp -d -t ${tempfoo}`

./buildparser.sh || exit 1
go build cmd/codegen/codegen.go || exit 1

FILES='abort casevoid dispatchvoidlet dispatch-void-dynamic mod-param dispatch-void-static interaction-attrinit-method while-val shadow-let-let shadow-attr-let many_objects_on_heap case-none shadow-case-let shadow-let-case shadow-attr-case case-order shadow-formal-let shadow-attr-formal letinit shadow-formal-case eval-order-self let-nested bigexpr eval-order-args sequence fibo simple-gc assignment-val basic-init string-methods newbasic init-order-self basicequality calls init-order-super fact dispatch-override-dynamic copy-self-dispatch multiple-dispatch selftypeattribute new-self-dispatch dispatch-override-static recclass scoping typename primes new-st override-basic exp init-default objectequality multiple-static-dispatch bool eval-order-arith copy-self-init new-self-init not hairyscary cells override sort_list book_list c lam lam-gc bigexample nested-arith'
[[ $# -gt 0 ]] && FILES="${@:1}"

CORRECT=0
INCORRECT=0
BADNAME=''
BADWANT=''
BADGOT=''

gcfilter()
{
	perl -p -e 's/Garbage collecting \.\.\.\n//; s/Major \.\.\.\n//'
}

succeed ()
{
  CORRECT=$((CORRECT+1))
  echo " ok"
  return 0
}

fail ()
{
  INCORRECT=$((INCORRECT+1))
  echo " FAIL"
  if [[ $BADNAME == '' ]]
  then
      BADNAME=$1
      BADWANT=$2
      BADGOT=$3
	  BADGCFLAGS=$4
  fi
  return 1
}

echo "WITHOUT GARBAGE COLLECTION"
GCFLAGS=""
for i in $FILES
do
    echo -n "$i..."
    ./codegen $GCFLAGS testdata/codegen/$i.cl > $OUTDIR/$i.s || exit 1
    OUTWANT=$OUTDIR/$i.want.out
    OUTGOT=$OUTDIR/$i.got.out
    testdata/codegen/PA5-filter < testdata/codegen/$i.cl.out > $OUTWANT
    spim -exception_file $RUNTIME_FILE -file $OUTDIR/$i.s | testdata/codegen/PA5-filter > $OUTGOT
    if cmp -s $OUTWANT $OUTGOT
    then
        succeed
    else
        fail $i $OUTWANT $OUTGOT "$GCFLAGS"
    fi
done

echo "WITH NORMAL GARBAGE COLLECTION"
GCFLAGS="-usegc"
for i in $FILES
do
    echo -n "$i..."
    ./codegen $GCFLAGS testdata/codegen/$i.cl > $OUTDIR/$i.s || exit 1
    OUTWANT=$OUTDIR/$i.want.out
    OUTGOT=$OUTDIR/$i.got.out
    testdata/codegen/PA5-filter < testdata/codegen/$i.cl.out > $OUTWANT
    spim -exception_file $RUNTIME_FILE -file $OUTDIR/$i.s | gcfilter | testdata/codegen/PA5-filter > $OUTGOT
    if cmp -s $OUTWANT $OUTGOT
    then
        succeed
    else
        fail $i $OUTWANT $OUTGOT "$GCFLAGS"
    fi
done

if [[ ($INCORRECT == 0) && ($NOSLOW == "") ]]
then
    echo "WITH COLLECT-ALWAYS GARBAGE COLLECTION"
	GCFLAGS="-usegc -testgc"
    for i in $FILES
    do
        echo -n "$i..."
        ./codegen $GCFLAGS testdata/codegen/$i.cl > $OUTDIR/$i.s || exit 1
        OUTWANT=$OUTDIR/$i.want.out
        OUTGOT=$OUTDIR/$i.got.out
        testdata/codegen/PA5-filter < testdata/codegen/$i.cl.out > $OUTWANT
        spim -exception_file $RUNTIME_FILE -file $OUTDIR/$i.s | gcfilter | testdata/codegen/PA5-filter > $OUTGOT
        if cmp -s $OUTWANT $OUTGOT
        then
            succeed
        else
            fail $i $OUTWANT $OUTGOT "$GCFLAGS"
			break
        fi
    done
fi

if [[ $INCORRECT == 0 ]]
then
    echo "($CORRECT/$((CORRECT+INCORRECT)))"
    echo "ok"
else
    
    echo -e "\nFirst failure: $BADNAME"
    diff -u $BADWANT $BADGOT
	echo "cat -n testdata/codegen/$BADNAME.cl"
	echo "go build cmd/codegen/codegen.go && ./codegen $BADGCFLAGS testdata/codegen/$BADNAME.cl > $BADNAME.s && spim -exception_file $PWD/resources/trap.handler -file $BADNAME.s"
    echo "($CORRECT/$((CORRECT+INCORRECT)))"
    echo "FAIL"
    exit 1
fi
rm -r $OUTDIR
rm -f ./codegen

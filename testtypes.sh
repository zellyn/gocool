tempfoo=`basename $0`
rm -rf $TMPDIR/$tempfoo.*
OUTDIR=`mktemp -d -t ${tempfoo}`

./buildparser.sh || exit 1
go build cmd/typecheck/typecheck.go || exit 1

GOOD_FILES='simplearith basicclassestree expressionblock objectdispatchabort initwithself compare comparisons cycleinmethods letnoinit forwardinherits letinit newselftype basic overridingmethod letshadows neg methodcallsitself overriderenamearg isvoid overridingmethod3 inheritsObject scopes letselftype if methodnameclash trickyatdispatch stringtest overridingmethod2 simplecase assignment subtypemethodreturn dispatch io staticdispatch classes hairyscary.cl cells.cl list.cl'
BAD_FILES='nomain badredefineint inheritsselftype returntypenoexist letself badmethodcallsitself badarith outofscope selftypeparameterposition missingclass selftypebadreturn attroverride selftyperedeclared badequalitytest2 badequalitytest dupformals self-assignment selfinformalparameter badwhilecond assignnoconform caseidenticalbranch inheritsbool inheritsstring badwhilebody anattributenamedself attrbadinit redefinedclass redefinedobject signaturechange trickyatdispatch2 letbadinit badargs1 overridingmethod4 badstaticdispatch baddispatch lubtest'

CORRECT=0
INCORRECT=0
BADNAME=''
BADWANT=''
BADGOT=''

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
  fi
  return 1
}

echo "---- BAD INPUT ----"
for i in $BAD_FILES
do
    echo -n "$i..."
    ./typecheck testdata/typecheck/$i.test > $OUTDIR/$i.test.out 2>&1
    cmp -s testdata/typecheck/$i.test.out $OUTDIR/$i.test.out && succeed || fail $i testdata/typecheck/$i.test.out $OUTDIR/$i.test.out
done

echo "---- GOOD INPUT ----"
for i in $GOOD_FILES
do
    echo -n "$i..."
    ./typecheck testdata/typecheck/$i.test > $OUTDIR/$i.test.out 2>&1
    cmp -s testdata/typecheck/$i.test.out $OUTDIR/$i.test.out && succeed || fail $i testdata/typecheck/$i.test.out $OUTDIR/$i.test.out
done

if [[ $INCORRECT == 0 ]]
then
    echo "SUCCESS! ($CORRECT/$((CORRECT+INCORRECT)))"
else
    
    echo -e "\nFirst failure: $BADNAME"
    diff -u $BADWANT $BADGOT
    echo "FAIL! ($CORRECT/$((CORRECT+INCORRECT)))"
    exit 1
fi
rm -r $OUTDIR
rm -f ./typecheck

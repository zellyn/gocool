tempfoo=`basename $0`
rm -rf $TMPDIR/$tempfoo.*
OUTFILE=`mktemp -t ${tempfoo}`

INFILE=testdata/typecheck/$1.test
if [[ ! -e $INFILE ]]
then
    echo "$INFILE: file doesn't exist"
    exit 1
fi

./buildparser.sh || exit 1
go build cmd/typecheck/typecheck.go || exit 1

if [[ $2 == "update" ]]
then
    [[ -e $INFILE.out-ORIG  ]] || cp $INFILE.out $INFILE.out-ORIG
    ./typecheck $INFILE > $INFILE.out 2>&1
fi

./typecheck $INFILE > $OUTFILE 2>&1
if cmp -s $INFILE.out $OUTFILE
then
    echo "Ok"
else
    diff -u $INFILE.out $OUTFILE
    exit 1
fi
rm $OUTFILE
rm ./typecheck

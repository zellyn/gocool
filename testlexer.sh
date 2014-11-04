set -e

tempfoo=`basename $0`
rm -rf $TMPDIR/$tempfoo.*
OUTDIR=`mktemp -d -t ${tempfoo}`
go build cmd/printlex/printlex.go

for i in testdata/lex/*.cool
do
    f=`basename $i`
    echo ./printlex testdata/lex/$f '>' $OUTDIR/$f.out
    ./printlex testdata/lex/$f > $OUTDIR/$f.out || exit 1
    diff testdata/lex/$f.out $OUTDIR/$f.out
done

echo 'SUCCESS!'
rm -r $OUTDIR
rm -f ./printlex

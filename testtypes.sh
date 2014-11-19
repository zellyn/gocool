set -e

tempfoo=`basename $0`
rm -rf $TMPDIR/$tempfoo.*
OUTDIR=`mktemp -d -t ${tempfoo}`

./buildparser.sh
go build cmd/typecheck/typecheck.go

GOOD_FILES='simplearith basicclassestree expressionblock objectdispatchabort initwithself compare comparisons cycleinmethods letnoinit forwardinherits letinit newselftype basic overridingmethod letshadows neg methodcallsitself overriderenamearg isvoid overridingmethod3 inheritsObject scopes letselftype if methodnameclash trickyatdispatch stringtest overridingmethod2 simplecase assignment subtypemethodreturn dispatch io staticdispatch classes hairyscary.cl cells.cl list.cl'
BAD_FILES='nomain badredefineint inheritsselftype returntypenoexist letself badmethodcallsitself badarith outofscope selftypeparameterposition missingclass selftypebadreturn attroverride selftyperedeclared badequalitytest2 badequalitytest dupformals self-assignment selfinformalparameter badwhilecond assignnoconform caseidenticalbranch inheritsbool inheritsstring badwhilebody anattributenamedself attrbadinit redefinedclass redefinedobject signaturechange trickyatdispatch2 letbadinit badargs1 overridingmethod4 badstaticdispatch baddispatch lubtest'

echo "---- GOOD INPUT ----"
for i in $GOOD_FILES
do
    echo "### $i"
    ./typecheck testdata/typecheck/$i.test > $OUTDIR/$i.test.out || true
    cmp -s testdata/typecheck/$i.test.out $OUTDIR/$i.test.out || diff -u testdata/typecheck/$i.test.out $OUTDIR/$i.test.out
done
echo "---- BAD INPUT ----"
for i in $BAD_FILES
do
    echo "### $i"
    ./typecheck testdata/typecheck/$i.test > $OUTDIR/$i.test.out || true
    cmp -s testdata/typecheck/$i.test.out $OUTDIR/$i.test.out || diff -u testdata/typecheck/$i.test.out $OUTDIR/$i.test.out
done

echo 'SUCCESS!'
rm -r $OUTDIR
rm -f ./typecheck

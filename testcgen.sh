tempfoo=`basename $0`
rm -rf $TMPDIR/$tempfoo.*
OUTDIR=`mktemp -d -t ${tempfoo}`

./buildparser.sh || exit 1
go build cmd/codegen/codegen.go || exit 1

FILES='abort casevoid dispatchvoidlet dispatch-void-dynamic mod-param dispatch-void-static interaction-attrinit-method while-val shadow-let-let shadow-attr-let many_objects_on_heap case-none shadow-case-let shadow-let-case shadow-attr-case case-order shadow-formal-let shadow-attr-formal letinit shadow-formal-case eval-order-self let-nested bigexpr eval-order-args sequence fibo simple-gc assignment-val basic-init string-methods newbasic init-order-self basicequality calls init-order-super fact dispatch-override-dynamic copy-self-dispatch multiple-dispatch selftypeattribute new-self-dispatch dispatch-override-static recclass scoping typename primes new-st override-basic exp init-default objectequality multiple-static-dispatch bool eval-order-arith copy-self-init new-self-init not hairyscary cells override sort_list book_list c lam lam-gc bigexample nested-arith'

for i in $FILES
do
    echo "$i"
    ./codegen testdata/codegen/$i.cl > $OUTDIR/$i.s || exit 1
done

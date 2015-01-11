set -e

./buildparser.sh
./testlexer.sh
./testparser.sh
./testtypes.sh
NOSLOW=true ./testcgen.sh

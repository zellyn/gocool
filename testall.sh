set -e

./buildparser.sh
./testlexer.sh
./testparser.sh
./testtypes.sh
./testcgen.sh

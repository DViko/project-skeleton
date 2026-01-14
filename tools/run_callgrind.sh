set -e

BUILD_DIR="$(cd "$(dirname "$0")/../build/profile" && pwd)"

EXEC="$BUILD_DIR/src/exec"
OUT="$BUILD_DIR/callgrind.out"

valgrind \
  --tool=callgrind \
  --callgrind-out-file="$OUT" \
  --instr-atstart=yes "$EXEC"

echo
echo "Ready!"
echo "Output: $OUT"
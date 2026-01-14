set -e

BUILD_DIR="$(cd "$(dirname "$0")/../build/asan" && pwd)"
EXEC="$BUILD_DIR/src/exec"

if [[ ! -x "$EXEC" ]]; then

  echo "ERROR: ASAN binary not found:"
  exit 1
fi

export ASAN_OPTIONS="detect_leaks=1:abort_on_error=1:color=always"
export LSAN_OPTIONS="verbosity=1"

"$EXEC"
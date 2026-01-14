CALLGRIND_OUT="${1:-build/profile/callgrind.out}"

if [ ! -f "$CALLGRIND_OUT" ]; then

    echo "File $CALLGRIND_OUT does not exist."
    exit 1
fi

kcachegrind "$CALLGRIND_OUT"
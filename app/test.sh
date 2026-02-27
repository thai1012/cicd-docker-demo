#!/usr/bin/env bash
set -euo pipefail
echo "Running tests..."
test -f app/app.sh
grep -q "Auto Deploy Version 2" app/app.sh
echo "✅ Tests passed."

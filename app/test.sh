#!/usr/bin/env bash
set -euo pipefail
echo "Running tests..."
test -f app/app.sh
grep -q "CI/CD Demo OK" app/app.sh
echo "✅ Tests passed."

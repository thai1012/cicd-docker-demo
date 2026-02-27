#!/usr/bin/env bash
set -euo pipefail

PORT="${PORT:-8080}"
echo "Starting demo app on port ${PORT}..."

mkdir -p /www
cat >/www/index.html <<'HTML'
<!doctype html>
<html>
  <head><meta charset="utf-8"><title>CI/CD Demo</title></head>
  <body>
    <h1>🚀 Auto Deploy Version 2</h1>
    <p>If you see this, container is running.</p>
  </body>
</html>
HTML

python3 -m http.server "${PORT}" --directory /www

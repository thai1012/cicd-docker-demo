#!/usr/bin/env bash
set -euo pipefail

echo "Deploying (local) with docker compose..."
docker compose down || true
docker compose up -d

echo "✅ Deployed. Check: http://192.168.231.131:8080"
docker ps --filter "name=demo-app"

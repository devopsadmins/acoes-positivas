#!/usr/bin/env bash
# Publica site/ no Cloudflare Pages (projeto "regeneracao").
set -euo pipefail
cd "$(dirname "$0")"
python3 -I -c "import json; json.load(open('site/data.json', encoding='utf-8'))"
npx -y wrangler@4 pages deploy site --project-name regeneracao --branch main --commit-dirty=true

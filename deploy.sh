#!/usr/bin/env bash
# Publica site/ no Cloudflare Pages (projeto "regeneracao").
set -euo pipefail
cd "$(dirname "$0")"
python3 -I -c "import json; json.load(open('site/data.json', encoding='utf-8'))"
CLOUDFLARE_ACCOUNT_ID="${CLOUDFLARE_ACCOUNT_ID:-3800162583f239663523d43a45116ba6}" \
  npx -y wrangler@4 pages deploy site --project-name regeneracao --branch main --commit-dirty=true

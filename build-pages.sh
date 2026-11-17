#!/usr/bin/env bash
# Builds index.html (standalone page for GitHub Pages) from piano-tiles.html.
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ko">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px);box-sizing:border-box;height:100%%}body{font-size:14px}img{max-width:100%%}</style>\n'
  printf '</head>\n<body>\n'
  cat piano-tiles.html
  printf '\n</body>\n</html>\n'
} > index.html

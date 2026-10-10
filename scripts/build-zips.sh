#!/usr/bin/env bash
# Build Claude.ai upload zips: dist/<skill>.zip, each containing <skill>/SKILL.md
# SPDX-License-Identifier: MIT
# Copyright (c) 2026 Ray Villalobos (see LICENSE-CODE)
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DIST="$ROOT/dist"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$DIST"
for skill_dir in "$ROOT"/skills/*/; do
  name="$(basename "$skill_dir")"
  src="$skill_dir/claude"
  if [ ! -f "$src/SKILL.md" ]; then
    echo "skip $name (no claude/SKILL.md)"
    continue
  fi
  mkdir -p "$TMP/$name"
  cp -R "$src"/. "$TMP/$name/"
  rm -f "$DIST/$name.zip"
  (cd "$TMP" && zip -q -r -X "$DIST/$name.zip" "$name" -x '*.DS_Store')
  echo "built dist/$name.zip"
done

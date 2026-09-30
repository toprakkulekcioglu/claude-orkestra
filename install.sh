#!/usr/bin/env bash
set -e

REPO="toprakkulekcioglu/claude-orkestra"
BRANCH="master"
DEST="${1:-$HOME/.claude/commands}"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "claude-orkestra indiriliyor..."
curl -fsSL "https://github.com/$REPO/archive/refs/heads/$BRANCH.tar.gz" | tar -xz -C "$TMP"

mkdir -p "$DEST"
cp "$TMP/claude-orkestra-$BRANCH"/commands/*.md "$DEST/"

echo "Kuruldu -> $DEST"
echo "Claude Code'da /proje-incele ile basla."

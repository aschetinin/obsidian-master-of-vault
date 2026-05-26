#!/usr/bin/env bash
# obsidian-master-of-vault — minimal installer
# Creates the directory structure. Filling rules and content — up to you.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$SCRIPT_DIR/template/master-vault"

echo ""
echo "=== Obsidian: master of vault — installer ==="
echo ""

# Pre-flight
for cmd in git cp mv; do
    command -v "$cmd" >/dev/null 2>&1 || { echo "FAIL: $cmd not found in PATH"; exit 1; }
done
[ -d "$TEMPLATE_DIR" ] || { echo "FAIL: template directory missing: $TEMPLATE_DIR"; exit 1; }

# Ask vault path
DEFAULT_VAULT="$HOME/Documents/master-vault"
read -p "Where to install master-vault? [default: $DEFAULT_VAULT]: " VAULT_PATH
VAULT_PATH="${VAULT_PATH:-$DEFAULT_VAULT}"
VAULT_PATH="${VAULT_PATH/#\~/$HOME}"

if [ -e "$VAULT_PATH" ]; then
    echo "FAIL: $VAULT_PATH already exists. Choose different path or remove first."
    exit 1
fi

PARENT_DIR="$(dirname "$VAULT_PATH")"
[ -w "$PARENT_DIR" ] || { echo "FAIL: no write permission on $PARENT_DIR"; exit 1; }

# Copy template
echo "Copying template to $VAULT_PATH ..."
cp -a "$TEMPLATE_DIR" "$VAULT_PATH"

# Git init
echo "Git init ..."
cd "$VAULT_PATH"
git init -q
git add .
git commit -q -m "initial: master-vault from template"

# Done
echo ""
echo "Done."
echo ""
echo "Vault installed at: $VAULT_PATH"
echo ""
echo "Next steps:"
echo "  1. Open in Obsidian: File -> Open vault -> $VAULT_PATH"
echo "  2. Read agents/_standard.md — стандарт оформления per-agent правил"
echo "  3. Create your first agents/<agent-id>.md by the standard"
echo "  4. Adapt structure (work/personal/cowork triggers) to your contexts"
echo ""

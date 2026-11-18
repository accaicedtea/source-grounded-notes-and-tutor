#!/bin/bash

REPO_URL="https://github.com/IL_TUO_USERNAME/source-grounded-notes-and-tutor.git"
SKILL_NAME="source-grounded-notes-and-tutor"

echo "Installazione della skill '$SKILL_NAME' per Claude Code..."
echo "Dove vuoi installarla?"
echo "1) Solo nel progetto corrente (.claude/skills/)"
echo "2) Globalmente per tutti i progetti (~/.claude/skills/)"
read -p "Scegli (1 o 2) [default: 1]: " choice

if [ "$choice" == "2" ]; then
    TARGET_DIR="$HOME/.claude/skills/$SKILL_NAME"
else
    TARGET_DIR=".claude/skills/$SKILL_NAME"
fi

# Rimuove eventuali installazioni precedenti
rm -rf "$TARGET_DIR"
mkdir -p "$(dirname "$TARGET_DIR")"

# Clona il repository e rimuove la cartella .git per mantenerlo pulito
git clone --depth 1 "$REPO_URL" "$TARGET_DIR"
rm -rf "$TARGET_DIR/.git" "$TARGET_DIR/install.sh" "$TARGET_DIR/README.md"

echo "✅ Skill installata con successo in: $TARGET_DIR"
echo "Ora puoi usare comandi come 'generate notes' o 'drill chapter 1' in Claude Code!"
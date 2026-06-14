#!/usr/bin/env bash
set -euo pipefail

REPO="The-Life/is-this-useful"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_HERMES=0
AGENTS=()
SOURCE="$REPO"

usage() {
  cat <<'EOF'
Is This Useful? installer

Usage:
  ./install.sh --hermes
  ./install.sh --agent codex
  ./install.sh --agent claude-code --agent cursor
  ./install.sh --all
  ./install.sh --local --agent codex

Options:
  --hermes          Install into ~/.hermes/skills/research/is-this-useful
  --agent <name>    Install via npx skills for an agent profile, e.g. codex, claude-code, cursor
  --all             Install to all Skills CLI supported agents via -a '*'
  --local           Use local repo path for npx skills instead of GitHub slug
  -h, --help        Show help
EOF
}

while [ $# -gt 0 ]; do
  case "$1" in
    --hermes) INSTALL_HERMES=1 ;;
    --agent) shift; AGENTS+=("$1") ;;
    --all) AGENTS+=("*") ;;
    --local) SOURCE="$ROOT_DIR" ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1" >&2; usage; exit 2 ;;
  esac
  shift
done

if [ "$INSTALL_HERMES" = 1 ]; then
  dest="$HOME/.hermes/skills/research/is-this-useful"
  mkdir -p "$dest"
  cp -R "$ROOT_DIR/skills/is-this-useful/"* "$dest/"
  echo "Installed Hermes skill: $dest"
fi

if [ ${#AGENTS[@]} -gt 0 ]; then
  for agent in "${AGENTS[@]}"; do
    npx -y skills add "$SOURCE" -a "$agent" -s is-this-useful -g -y
  done
fi

if [ "$INSTALL_HERMES" = 0 ] && [ ${#AGENTS[@]} -eq 0 ]; then
  usage
fi

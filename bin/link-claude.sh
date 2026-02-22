#!/usr/bin/env bash
# Link skill directories into ~/.claude/skills/ so Claude Code can discover them.
# Searches for any directory containing SKILL.md under the source and creates
# a symlink in the target named after that directory.

set -euo pipefail

SOURCE="${HOME}/.config/agents/skills"
TARGET="${HOME}/.claude/skills"

mkdir -p "$TARGET"

while IFS= read -r skill_md; do
    skill_dir="$(dirname "$skill_md")"
    skill_name="$(basename "$skill_dir")"
    link="$TARGET/$skill_name"

    if [[ -L "$link" ]]; then
        existing="$(readlink "$link")"
        if [[ "$existing" == "$skill_dir" ]]; then
            echo "ok       $skill_name -> $skill_dir"
            continue
        else
            echo "update   $skill_name (was $existing)"
            rm "$link"
        fi
    elif [[ -e "$link" ]]; then
        echo "skip     $skill_name (non-symlink already exists at $link)"
        continue
    fi

    ln -s "$skill_dir" "$link"
    echo "linked   $skill_name -> $skill_dir"
done < <(find "$SOURCE" -name "SKILL.md" | sort)

#!/usr/bin/env bash
# concat-marp.sh
# Usage: ./concat-marp.sh <DIR> > slides.md
# Example: ./concat-marp.sh chapter > slides.md

set -euo pipefail

###############################################################################
# 1) Validate arguments                                                       #
###############################################################################
SRC_DIR="${1:-}"

if [[ -z "$SRC_DIR" ]]; then
  echo "Usage: $0 <directory>" >&2
  exit 1
fi

if [[ ! -d "$SRC_DIR" ]]; then
  echo "Error: '$SRC_DIR' is not a directory" >&2
  exit 1
fi

###############################################################################
# 2) Collect target Markdown files in natural order                           #
#    Matches files like 01_*.md, 02_*.md, …                                   #
###############################################################################
mapfile -t files < <(
  find "$SRC_DIR" -maxdepth 1 -type f -name '[0-9][0-9]_*.md' -print | sort -V
)

if [[ ${#files[@]} -eq 0 ]]; then
  echo "Error: No matching Markdown files found in '$SRC_DIR'" >&2
  exit 1
fi

###############################################################################
# 3) Concatenate files                                                        #
#    - Keep the front‑matter of the first file only                           #
#    - Remove front‑matter from subsequent files                              #
#    - Insert `---` as a slide break between files                            #
###############################################################################
for idx in "${!files[@]}"; do
  file="${files[$idx]}"

  if [[ $idx -eq 0 ]]; then
    # Output the first file exactly as is (front‑matter included)
    cat "$file"
  else
    # Strip the first front‑matter block (--- … ---) before outputting
    awk '
      BEGIN {skip=0}
      /^---[[:space:]]*$/ {
        if (skip==0) {skip=1; next}      # Enter skip mode at first ---
        if (skip==1) {skip=2; next}      # Exit skip mode at second ---
      }
      skip==1 {next}                     # Skip lines within front‑matter
      {print}
    ' "$file"
  fi

  # Insert a slide break after every file except the last one
  if [[ $idx -lt $((${#files[@]} - 1)) ]]; then
    printf '\n---\n\n'
  fi
done

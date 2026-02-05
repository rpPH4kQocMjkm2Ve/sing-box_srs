#!/bin/bash
set -euo pipefail

SING_BOX_PATH="$HOME/sing-box/sing-box"

compile() {
    local input="$1"
    local output="${2:-srs/${input%.json}.srs}"
    
    mkdir -p "$(dirname "$output")"
    
    "${SING_BOX_PATH}" rule-set compile "$input" -o "$output"
    
    echo "Created: $output"
}

for file in *.json; do
    compile "$file"
done

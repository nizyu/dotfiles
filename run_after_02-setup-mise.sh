#!/bin/bash
set -euo pipefail

echo "========================================"
echo "Setting up mise tools..."
echo "========================================"

# mise のパスを通す (一時的)
export PATH="$HOME/.local/share/mise/bin:$HOME/.local/bin:$PATH"

if command -v mise >/dev/null 2>&1; then
    echo "Running mise install..."
    mise install
    echo "Mise setup completed."
else
    echo "mise is not installed or not in PATH."
fi

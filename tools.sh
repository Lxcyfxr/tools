#!/bin/bash

# Directory to install all tools
INSTALL_DIR="$HOME/my-tools"
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

# List of repos to clone
REPOS=(
  "https://github.com/Bashfuscator/Bashfuscator.git"
  "https://github.com/derv82/wifite2.git"
  "https://github.com/samratashok/nishang.git"
  "https://github.com/urbanadventurer/username-anarchy.git"
  "https://github.com/PandaSt0rm/webfuzz_api.git"
)

echo "Cloning all repos into $INSTALL_DIR..."
for repo in "${REPOS[@]}"; do
  git clone "$repo"
done

echo "✅ All tools cloned successfully!"

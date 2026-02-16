#!/bin/bash

# update system
echo "Updating... "
sudo apt update

#List of Packages
package_list="wget git curl zoxide fd-find fzf f3 jq gdb eyewitness steghide sherlock golang cupp htop fastfetch gh openssl hcxtools hcxdumptool wifiphisher gobuster strace tor torbrowser-launcher html2text nuclei crackmapexec ripgrep bat tree"

#Install Packages
sudo apt install -y $package_list
echo "✅ All packages installed"

# Directory to install all tools
INSTALL_DIR="$HOME/tools"
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

# List of repos to clone
REPOS=(
  "https://github.com/Bashfuscator/Bashfuscator.git"
  "https://github.com/derv82/wifite2.git"
  "https://github.com/samratashok/nishang.git"
  "https://github.com/urbanadventurer/username-anarchy.git"
  "https://github.com/PandaSt0rm/webfuzz_api.git"
  "https://github.com/michenriksen/aquatone.git"
  "https://github.com/RedSiege/EyeWitness.git"
  "https://github.com/tomnomnom/waybackurls.git"
  "https://github.com/ajnik/joomla-bruteforce.git"
  "https://github.com/drego85/JoomlaScan.git"
  "https://github.com/enjoiz/XXEinjector.git"
  "https://github.com/sboden/droopescan.git" #droopescan fork with python 3.12 support
  "https://github.com/irsdl/IIS-ShortName-Scanner.git"
)

echo "Cloning all repos into $INSTALL_DIR..."
for repo in "${REPOS[@]}"; do
  repo_name=$(basename "$repo" .git)
  if [ -d "$repo_name" ]; then
    echo "⏭️  $repo_name already exists, skipping..."
  else
    git clone "$repo"
  fi
done

echo "✅ All tools cloned successfully!"

#!/usr/bin/env bash

# Starship Shell Prompt
curl -Lo /tmp/starship.tar.gz "https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz" &&
tar -xzf /tmp/starship.tar.gz -C /tmp &&
install -c -m 0755 /tmp/starship /usr/bin &&
echo 'eval "$(starship init bash)"' >> /etc/bashrc

# Remove some stuff
rm -f /usr/share/applications/htop.desktop
rm -f /usr/share/applications/nvtop.desktop
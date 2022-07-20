#!/usr/bin/env bash

# check if neofetch is not installed
if [ ! -x "$(command -v neofetch)" ]; then
  # install neofetch
  echo "neofetch is not installed, installing..."
  # install with brew if on mac
  if [ -x "$(command -v brew)" ]; then
    brew install neofetch
  else
    # install with apt-get if on linux
    apt install neofetch
  fi
fi

# copy keofetch.sh to /usr/local/bin
cp keofetch.sh /usr/local/bin/keofetch

# make keofetch executable
chmod +x /usr/local/bin/keofetch

echo "Successfully installed keofetch!"
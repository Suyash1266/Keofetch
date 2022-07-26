#!/usr/bin/env bash

# check if neofetch is not installed
if [ ! -x "$(command -v neofetch)" ]; then
    # install neofetch
    echo "neofetch is not installed. This package requires it. Press enter to install it or any other key to exit."
    var=$(read -r)
    if [ "$var" == "" ]; then
        echo "Installing neofetch..."
        if [ "$(uname -s)" == "Linux" ]; then
            # check which package manager is installed
            if [ -x "$(command -v apt)" ]; then
                # install neofetch using apt
                sudo apt install neofetch
            elif [ -x "$(command -v pacman)" ]; then
                # install neofetch using pacman
                sudo pacman -S neofetch
            elif [ -x "$(command -v yum)" ]; then
                # install neofetch using yum
                sudo yum install neofetch
            elif [ -x "$(command -v dnf)" ]; then
                # install neofetch using dnf
                sudo dnf install neofetch
            elif [ -x "$(command -v zypper)" ]; then
                # install neofetch using zypper
                sudo zypper install neofetch
            else
                # error message
                echo "Unable to find a suitable package manager. Please install neofetch manually."
                exit 1
            fi
        elif [ "$(uname -s)" == "Darwin" ]; then
            # check if brew is installed
            if [ -x "$(command -v brew)" ]; then
                # install neofetch using brew
                brew install neofetch
            else
                # error message
                echo "Unable to find a suitable package manager. Press Enter to install brew (a package manager for MacOS) or any other key to exit."
                var=$(read -r)
                if [ "$var" == "" ]; then
                    # install brew
                    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
                    # install neofetch using brew
                    if [ -x "$(command -v brew)" ]; then
                        brew install neofetch
                    else
                        # error message
                        echo "Unable to install neofetch. Please install neofetch manually."
                        exit 1
                    fi
                else
                    # exit
                    exit 1
                fi
            fi
        fi
    else
        exit 1
    fi
fi

# copy keofetch.sh to /usr/local/bin
cp keofetch.sh /usr/local/bin/keofetch

# make keofetch executable
chmod +x /usr/local/bin/keofetch

if (command -v keofetch); then
    echo "Successfully installed keofetch!"
else
    echo "Unable to install keofetch!"
fi
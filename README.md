# Keofetch

`keofetch` is a wrapper over the original `neofetch` program which when executed provides `neofetch` with a custom source to be used as the ASCII Logo. Made as a gift for someone special ❤️.

Works on Linux / macOS

## Installation

- Clone the repository from GitHub by running this command in terminal.
  
  ```bash
  git clone https://github.com/Suyash1266/Keofetch.git
  ```
  
  Alternatively you can also download the Zip from `Code` button and extract it.

- `cd` into `keofetch` directory or open the extracted directory in terminal.

- Run the installation script as a superuser.
  
  ```bash
  sudo ./install.sh
  ```

- Once the installation is completed, the command can be executed by typing `keofetch` in the terminal and pressing `Enter ⎆`.

## How does it work

- The `install.sh` script first checks if `neofetch` is installed or not, if it isn't it prompts the user to install `neofetch`.

- Once `neofetch` is detected the `keofetch` script is copied to the `/usr/local/bin` directory (for which sudo is required).

- The `keofetch` command can now be executed. Upon execution, `keofetch` gets the ASCII logo from the GitHub gist specified in the script and stores in a temporary file in the user directory.

- The path of the file is passed as `--source` to the `neofetch` command and as a result the ASCII logo in the file is displayed along with system information.

- The file is then deleted from the system.

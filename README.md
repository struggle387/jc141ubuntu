## jc141 Installation Script ##

This Bash script automates the setup of the jc141 environment on Ubuntu 25.04, including installing Wine, required dependencies, and the Dwarfs filesystem. It also configures necessary permissions for `fusermount3` with app armor. Additonal infomation about general fixes for ubuntu or other debian based distros can be found at https://gitlab.com/jc141x/setup/-/blob/main/generic.md.
## Prerequisites ##

- Ubuntu 25.04 "Plucky"
- Script requires `sudo` privileges for installing packages and modifying system files.

## Features ##

- Copies the `.jc141rc` configuration file to the user's home directory with bubblewrap fixes
- Checks for Wine installation and installs WineHQ staging if not present.
- Installs jc141 and Dwarfs dependencies
- Downloads, builds, and installs Dwarfs (v0.12.4) with Ninja and CMake.
- Cleans up temporary files after installation.
- Fixes AppArmor permissions for `fusermount3`.

## How to install ##

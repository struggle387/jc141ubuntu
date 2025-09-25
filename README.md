## jc141 Installation Script  ##
Created this script to be a noob friendly script for a friend to get started with jc141 repacks (ubuntu 25.04). 
This Bash script automates the setup of the jc141 environment on Ubuntu 25.04, including installing Wine (if needed), required dependencies, and the Dwarfs filesystem. It also configures necessary permissions for `fusermount3` with app armor. Additonal infomation about general fixes for ubuntu or other debian based distros can be found at https://gitlab.com/jc141x/setup/-/blob/main/generic.md.

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

## SETUP GUIDE WITH IMAGES (for noobs) ##

## Download ZIP ##
 <img width="653" height="473" alt="Screenshot From 2025-07-10 20-15-42" src="https://github.com/user-attachments/assets/f623ca25-fd7c-4280-ab2c-02e42fe40655" />
 
## Right click and extract ##
<img width="653" height="473" alt="Screenshot From 2025-07-10 20-16-37" src="https://github.com/user-attachments/assets/d69ede43-bfc0-4185-a07c-10bbb5d9f6e7" />

## Double left click jc141ubuntu folder ## 
<img width="653" height="473" alt="Screenshot From 2025-07-10 20-16-49" src="https://github.com/user-attachments/assets/03e5f35a-fdc5-412c-bd7a-3c9a6b1cbc1a" />

## Right click start.sh and left click "Properties" on the bottom of the menu ##
<img width="727" height="588" alt="Screenshot From 2025-07-10 20-17-13" src="https://github.com/user-attachments/assets/5df59213-74ef-46b8-b7bc-6263db9c27c7" />

## Left click and enable 'Executable as program'
<img width="489" height="703" alt="Screenshot From 2025-07-10 20-18-17" src="https://github.com/user-attachments/assets/96824f5c-a73c-476b-884d-77a7fee0277d" />

## Right click start.sh and left click "Properties" on the bottom of the menu ##
<img width="727" height="588" alt="Screenshot From 2025-07-10 20-17-13" src="https://github.com/user-attachments/assets/92294d6e-2093-4898-a3d3-93daeafa9cf2" />

## Left click "Run as a Program"
<img width="489" height="703" alt="Screenshot From 2025-07-10 20-18-33" src="https://github.com/user-attachments/assets/74e8a0ba-64d0-4f9c-9502-e5a936ade358" />

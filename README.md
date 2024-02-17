## Ubuntu 22.04 LTS Container Environment pre-configured with AWS / Terraform / Python

To get it running:

1) Clone this entire repository
2) Run make-container-image.sh from the repo's root directory
3) Follow the instructions in instructions.txt to start the container and access its shell
4) Run configure-machine.sh inside of the container shell's root directory
5) Run install-python.sh inside of the container shell's root directory
6) You are ready to run aws or python3 commands from anywhere
7) cd into a cloned TF repo and hydrate your terraform.tf backend file
8) You are ready to run TF commands from your main directory


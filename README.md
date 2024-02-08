## This is a script to get a working Docker container environemnt for Ubuntu 22.04 LTS with basic packages for Terraform and AWS administration pre-shipped. 

To get it running:

1) Clone this entire repository
2) Run make-container-image.sh from the repo's root directory
3) Follow the instructions in instructions.txt to start the container and access its shell
4) Run configure-machine.sh inside of the container shell's root directory
5) cd into a cloned TF repo and hydrate your terraform.tf backend file
6) You are ready to run TF commands from your main directory 

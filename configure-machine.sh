####################################
####################################
## Install TF and Admin Packages  ##
####################################
####################################

## install getters, unzip, git, and text editor of choice (I think NANO is included in this image, not sure)
apt-get update && apt-get -y install wget curl vim git unzip

## get hashicorp repository keys
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

## install terraform package
apt update && apt install terraform

## THIS IS AN IMPORTANT STEP BUT NOT SCRIPTABLE
## THIS IS AN IMPORTANT STEP BUT NOT SCRIPTABLE
## THIS IS AN IMPORTANT STEP BUT NOT SCRIPTABLE
## terraform login {USE YOUR BACKEND ACCOUNT TO CREATE USER KEYS AND THEN FOLLOW THE INSTRUCTIONS IN THE TERMINAL}

## it will also be necessary to configure your user keys as environment variables in your TF Cloud workspace

####################################
####################################
## This step installs the AWS CLI ##
####################################
####################################

## ubuntu image is AMD arch
## Pull from curl, unzip, install 
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

## verify it worked
aws --verison

## THIS IS AN IMPORTANT STEP BUT NOT SCRIPTABLE
## THIS IS AN IMPORTANT STEP BUT NOT SCRIPTABLE
## THIS IS AN IMPORTANT STEP BUT NOT SCRIPTABLE
## aws configure {FOLLOW THE INSTRUCTIONS IN STDOUT USING PRE-CONFIGURED IAM USER KEYS}


## Pull from your own repo, or you can use some sample architeture I've put together
## just hydrate the values in terraform.tf located in the root directory to connect the
## resilient architecture to your own TF Cloud account backend

git clone git@github.com:vincentminutella/resilient_architecture.git ## OR your repo





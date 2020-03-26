#!/bin/bash

sudo yum update -y
sudo yum install -y gcc git 
mkdir ~/downloads/

# Install ruby
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.4
gem install bundler rake 

# Install terraform
cd ~/downloads
wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_386.zip
unzip terraform_0.12.21_linux_386.zip
mkdir ~/bin
mv terraform ~/bin/

# Install terragrunt
wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.2/terragrunt_linux_amd64
chmod 755 terragrunt_linux_amd64
mv terragrunt_linux_amd64 ~/bin/terragrunt
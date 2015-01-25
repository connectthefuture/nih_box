#!/usr/bin/env bash

if [ ! -f Miniconda-3.6.0-Linux-x86_64.sh ]; then
    wget http://repo.continuum.io/miniconda/Miniconda-3.6.0-Linux-x86_64.sh
    chmod +x Miniconda-3.6.0-Linux-x86_64.sh
fi


./Miniconda-3.6.0-Linux-x86_64.sh -b -p /home/vagrant/miniconda
export PATH=/home/vagrant/miniconda/bin:$PATH
echo "export PATH=/home/vagrant/miniconda/bin:$PATH" >> ~/.bashrc
source ~/.bashrc

# Install R and related packages. From:
# https://github.com/lmullen/vagrant-r-dev
sudo add-apt-repository "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51716619E084DAB9
sudo apt-get update
sudo apt-get install -y r-base r-base-core r-base-dev
sudo adduser vagrant staff
sudo Rscript /vagrant/rstack.R

# Setup pystack environment to load up with external file
conda create --name pystack --file /vagrant/pystack.txt
source activate pystack

pip install rpy2
pip install pysal

sudo apt-get install -y git
pip install --process-dependency-links git+https://github.com/pymc-devs/pymc


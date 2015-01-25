#!/usr/bin/env bash

export PATH="/home/vagrant/miniconda/bin:$PATH"
source activate pystack

if [[ ! -d /vagrant/notebooks ]]; then
    sudo -u vagrant mkdir /vagrant/notebooks
fi

cd /vagrant/notebooks && ipython notebook --ip=0.0.0.0 --no-browser

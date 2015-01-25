# NIH box

Vagrant setup to build a linux box loaded with required packages for NIH
project. This includes the following stacks:

* SciPy stack (`IPython` notebook, `matplotlib`, `pandas`, `scipy`...)
* Spatial regression in Python (`PySAL`)
* PyMC-3
* rmagic for the IPython notebook to interact with R
* R stack for multilevel and bayesian regression analysis (`lme4`,
  `MCMCpack`...)

## Usage

* Make sure you have installed a recent version of
  [`VirtualBox`](https://www.virtualbox.org/) and
  [`Vagrant`](https://www.vagrantup.com/).
* Clone this repository and navigate into the folder.
* Run `vagrant up`. The first time, this will build the box (so it might take
  a while, depending on connection and power of your machine). Once built, it
  will only take a few seconds to make it boot up.
* At this point, the virtual machine (VM) is running and an IPython notebook server
  is running. You can access it on the host by pointing your browser to
  http://localhost:8888
* When you run `vagrant up`, it will also check if your folder has a subfolder
  called `notebooks` and, if not, it will create it. That is where the
  IPython notebook server will start running.
* When you are done with your analysis, `Ctr+D` twice will stop the notebook
  server. Then run `vagrant halt` to stop the VM.
* If you want to get rid of the VM, run `vagrant destroy` and things will
  dissapear as if they'd never happened. That easy.

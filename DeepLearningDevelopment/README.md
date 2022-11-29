# Deep Learning Python Development Workstation 

This is a base image that contains all packages listed in the parent dir [`requirements.txt`](https://github.com/akmalsoliev/deep-learning-docker/blob/master/deeplearning.txt). 

`setup.sh` installs:
* Latest verison of VIM
* LSD for better directory exploration
* Personal `.basrch` and `.vimrc`

Every machine requires its own specific customization that can be made via adding secondary layer with its own `requirements.txt`. 

Latest builds are available:

`docker pull asoliev/deep-learning:dev`

# Deep Learning Python Development Workstation 

This is a base image that contains all packages listed in the parent dir [`requirements.txt`](https://github.com/akmalsoliev/deep-learning-docker/blob/master/deeplearning.txt)

`setup.sh` installs:
* Latest verison of VIM
* LSD for better directory exploration
* Personal `.basrch` and `.vimrc`

Every machine requires its own specific customization that can be made via adding secondary layer with its own `requirements.txt`

Latest builds are available:

`docker pull asoliev/deep-learning:dev`

## Command run the docker image

`docker run --rm -it -p 2222:22 -v "$(pwd)":/workdir asoliev/deep-learning:dev`

## SSH

* Host: `localhost`
* Username: `root`
* Password: `sshpass`

To change the password rebuild the image with modified env `PASS`

### Activation command

`service ssh start && service ssh status`

The command should return that 

`Starting OpenBSD Secure Shell server: sshd.` 

`sshd is running.`

### How to connect

Syntax: `root@localhost:2222`


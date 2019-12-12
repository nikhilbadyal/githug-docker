# githug-docker
_a dockerfile to play githug without installing anything_

githug[https://github.com/Gazler/githug] is a nice ruby project that everyone who wants to learn Git should know and use.

With it you can learn Git by solving a series of levels of increasing difficulty.

This simple dockerfile lets you play githug without having to install ruby and other dependencies on your system.

The use is straightforward: clone the repo, start docker and you are done

    git clone https://github.com/pomarc/githug-docker

    cd githug-docker/

    docker build -t githug-docker-image .

    docker run -ti --name githug githug-docker-image /bin/bash

and you are in a githug environment.

you simply type 

    githug 

at the prompt and start playing. ta-da.

If you feel like exiting, type ```exit```: the docker container will exit, but your levels are saved in a docker volume.

When you want to continue your learning, just restart the same container with

    docker start -i githug

and you are on your session again, with your progress saved.

Easy peasy.

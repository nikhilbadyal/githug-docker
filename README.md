# githug-docker

> a dockerfile to play githug without installing anything.

[githug](https://github.com/Gazler/githug) is a nice ruby project that everyone who wants to learn Git should know and use.

With it you can learn Git by solving a series of problems with levels of increasing difficulty.

This simple dockerfile lets you play githug without having to install ruby and other dependencies on your system.

The use is straightforward: clone the repo, start docker and you are done

```sh
git clone https://github.com/nikhilbadyal/githug-docker
cd githug-docker/
```

## If _Running_ first time

Do

```sh
docker build -t githug:latest .
docker run -it --name githug githug /bin/sh
```

OR

```sh
sh run_githug.sh
```

## If _NOT_ a first run

```sh
docker start -it githug
```

and now you are in a githug environment.

Now simply type

```sh
githug
```

at the prompt and start playing. ta-da.

If you feel like exiting, type `exit`, the docker container will exit, but your levels are saved in a docker volume.

Happy Learning.🤓

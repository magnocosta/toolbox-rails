# Toolbox Rails

A simple script in Docker for build an image with last Ruby and Rails version installed. That image is the base for my recently Ruby projects created.

## Requirements

The unique requirement is Docker. For you use this script, you need Docker installed in your environment. If you don't have Docker installed, you can start [here](https://docs.docker.com/get-docker/).

## How can I use this repo?

1. The first thing that you need is download the repo and build image:

		$ git clone https://github.com/magnocosta/toolbox-rails.git
		$ cd toolbox-rails
		$ docker build . -t toolbox-rails:latest

2. If the image was created with success, now you use for start new Rails project. Follow the example:

		$ mkdir example-rails
		$ cd example-rails
		$ docker run -v "$(pwd):/app" toolbox-rails:latest rails new .

3. On the finish steps you have a new Rails project created without install anything in your pc.

## A simple scaffold

It is very common, in my world, I have to create a new Rails project with Docker Compose setup. For that a create a cli to help me with it. You can see all option available using:

	$ docker run toolbox-rails app-cli --help

The files generated by scaffold is simple and you can see on helpers folder.

## What are there on the box?
- Ruby
- Rails
- Nodejs
- Libpq-dev
- Build-essential


## License

The Toolbox Rails is released under the [MIT License](https://opensource.org/licenses/MIT).




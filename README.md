# Toolbox Rails

A simple script in Docker for build an image with last Ruby and Rails version installed. That image is the base for my recently Ruby projects created.

## Requirements

The unique requirement is Docker. For you use this script, yout need Docker installed in your environment. If you don't have Docker installed, you can start [here] (https://docs.docker.com/get-docker/).

## How can I use this repo?

The first thing that you need is download the repo and build image:
<pre>
$ git clone https://github.com/magnocosta/ruby-on-rails-toolbox-docker.git
$ cd ruby-on-rails-toolbox-docker
$ docker build . -t rails-toobox
</pre>

If the image was created with success, now you use for start new Rails project. Follow the example:

<pre>
$ mkdir example-rails
$ cd example-rails
$ docker run -v "$(pwd):/app" rails-tools rails new .
</pre>

On the finish steps you have a new Rails project created without install anything in your pc.

## What are there on the box?
- Ruby
- Rails
- Nodejs
- Libpq-dev
- Build-essential

For more information about Docker you can read the [docs](https://docs.docker.com/)





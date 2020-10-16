# ReactPHP tiny server

This is a ReactPHP based tiny testing server. You will find some endpoints you
can use for your testing purposes, like testing a 404 endpoint, a simple 200
endpoints or a 301 redirection, even following the redirection.

## Install

You can install the balancer by just cloning the repository somewhere in your
localhost.

```bash
cd /tmp/
git clone git@github.com:driftphp/tiny-server.git
cd tiny-server
```

Then, you should install the composer dependencies. Make sure you have composer
installed locally. If you have some php platform issues, just `composer update`
instead of install.

```bash
composer install
```

## Use it

You can use the balancer as a simple random balancer. Not even a round robin.
This repository it's meant to be used as a small piece of code for balancing 
TCP requests among a set of ReactPHP servers, so a simple random balancing would
be enough for that purpose.

```bash
php server 8000
```

### Using the docker image

You can use the tiny-server docker image if you need it

```bash
docker run -it -p 8000:8000 driftphp/tiny-server
```

## Endpoints

You can use one single endpoint, where you can define the response code. Easy.
Each request will result in a simple dot in the server. By default, you will
receive a 200.

```
curl 127.0.0.1:8000/200
curl 127.0.0.1:8000/404
curl 127.0.0.1:8000/500
```

### Redirections

You can even work with '301' or '308' redirections. In this case, if you don't
follow redirections, you will receive a simple response. Nothing will happen. If
you follow redirections, then, you will be redirected to
`418 Drift is a Teapot!`. In curl, you can follow redirects with the `-L` flag.

```
curl 127.0.0.1:8000/301
curl -L 127.0.0.1:8000/308
```
Shared Docker Webserver
=

This repo contains a script which creates two docker containers that run
nginx-proxy and letsencrypt.  This enables me to very simply deploy many apps to
the same physical server. As a bonus, I get SSL for free!

Props to [JrCs](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion) for the
great build.

## Running Webserver

You can simply invoke the [run.sh](script)

```
$ ./run.sh
```

or if you want to run manually...

1. Create the `nginx-proxy` network:

    ```bash
    $ docker network create nginx-proxy
    ```

1. Create required folders for nginx and letsencrypt container:

    ```bash
    $ sudo mkdir -p /root/nginx-data/certs
    $ sudo chmod a+w /root/nginx-data/certs
    $ sudo mkdir -p /root/nginx-data/vhost.d
    $ sudo chmod a+w /root/nginx-data/vhost.d
    $ sudo mkdir -p /root/nginx-data/html
    $ sudo chmod a+w /root/nginx-data/html
    ```

1. Start the nginx-proxy and letsncrypt containers

    ```
    $ docker-compose up -d
    ```

## Deploying Apps

I use [orats](https://github.com/nickjj/orats) to generate new Rails projects.

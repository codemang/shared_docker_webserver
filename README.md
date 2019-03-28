Shared Dockerized Webserver
=

## Running

You can simply invoke the [run.sh](script)

```
$ ./run.sh
```

or if you wnat to run manually...

1. Create the `nginx-proxy` network:

```bash
$ docker network create nginx-proxy
```

1. Create required folders for SSL:

```bash
$ mkdir -p /root/nginx-data/certs
$ chmod a+w /root/nginx-data/certs
$ mkdir -p /root/nginx-data/vhost.d
$ chmod a+w /root/nginx-data/vhost.d
$ mkdir -p /root/nginx-data/html
$ chmod a+w /root/nginx-data/html
```

1. Start the nginx-proxy and letsncrypt containeres

```
$ docker-compose up -d
```

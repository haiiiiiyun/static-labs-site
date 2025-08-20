# Static site docker deployment

## Build the Docker image from Dockerfile:

1. All static site files are located under folder out/
2. nginx related files are located under folder nginx/

Since the ssl_certificate files are not availabe now, 
Currently we only use the non-ssl version config file: nginx/default.conf

Just run the following to create a docker image: 

```bash
docker build -t ai-labs-site-docker-image .
```

## Import the docker image from a local file

This command imports an image from a local tarball file and tags it as ai-labs-site-docker-image:new:

```bash
docker import ai-labs-site-docker-image.tar ai-labs-site-docker-image:new
```


## Run the container

```bash
docker run -d -p 8080:80 --name ai-labs-site-instance-1 ai-labs-site-docker-image
```

In this example, port 8080 is the port on the server, 80 is the port in the docker image, here we map the docker image port 80 to server's port 8080.

Now we can access the site with: http://server-ip:8080


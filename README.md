# box.com-apache-docker

This docker image will mount box.com files to apache /var/www/html folder.

1. Build image:

`docker build -t boxcom .`

2. Start container:

`docker run -p 88:80 -d --rm --name boxcont --privileged boxcom`

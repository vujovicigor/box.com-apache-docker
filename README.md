# box.com-apache-docker

This docker image will mount box.com files to apache /var/www/html folder.

1.Enter box.com email/pass in Dockerfile (last line):  

ENTRYPOINT printf "**YOUREMAILADDRESSHERE**\n**YOURPASSWORD**\ny\n" | mount /var/www/html && /usr/sbin/apache2ctl -D FOREGROUND

2.Build image:

`docker build -t boxcom .`

3.Start container:

`docker run -p 88:80 -d --name boxcont --privileged boxcom`

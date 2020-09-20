# phpmyadmin

Customize official [phpmyadmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin) iamge to run without __root__ privileges.

* Remove 'root' user operations from entrypoint script
* Install php myadmin during image build
* Config apache server listen on port 8080

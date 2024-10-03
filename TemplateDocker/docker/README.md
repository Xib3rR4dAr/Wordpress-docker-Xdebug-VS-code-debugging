WordPress with XDebug for Docker
================================

**It is intended for development environment only. Please do not use this in production environment. Please use the [official Docker WordPress image](https://hub.docker.com/_/wordpress) at production instead.**

XDebug has been added to the official WordPress Docker image here. The tag of the image corresponds to the tag of the official WordPress image.

Clone this Git repository with the command:

```
git clone https://github.com/wpdiaries/wordpress-xdebug.git xdebug
```

Please notice that I have added the following environment variable to `docker-compose.yml`:
```
XDEBUG_CONFIG: remote_host=host.docker.internal
```
DNS name `host.docker.internal` automatically resolves to the internal IP address used by the host, if want to update replace `host.docker.internal` with the IP address of your host-machine (where you have your IDE, e.g. `Visual Studio Code` installed).

The variable `XDEBUG_CONFIG` is an XDebug environment variable. It allows to add or redefine some XDebug configuration parameters. More information could be found [here](https://xdebug.org/docs/remote).

Of course you should never use such configuration in the Production environment. It is for the Development environment only.

E.g. we have port 3306 here open for external connections. So we will be able to connect to MySQL from programs like e.g. HeidiSQL on Windows or DBeaver on Mac. This is convenient for Development. But I doubt anyone would do anything like that on the Production server.

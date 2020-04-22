# RAD Nginx
A starting point for containerized Nginx instances.  Based on RAD Container:  https://github.com/aarongeiser/rad-container

# Getting Started
To get started using this Nginx container, you must have the latest version of Docker installed on your system.  If you are using an older version of Docker, please uninstall it and use the appropriate installer from the docker website.

https://docs.docker.com/engine/installation/

Once Docker is installed on your machine, follow the steps below to begin developing your application.  This is intended for local development, and will map your project root directory into the container and auto restart the application when changes are made.

1.  Navigate to your project root directory and copy the contents of this repository to that location.
2.  Create a copy of `make_env.dist` and rename it to `make_env`.  Update with your project specific information.
3.  Edit `/config/sites-enabled/default` or add an additional config file in `/config/sites-enabled/` with the server configuration you want to use.
3.  `make build`
4.  `make start`

# Success
1.  If successful, the location(s) you configured will route http traffic as expected from the host location.

# Commands for Local Development
The following commands are intended to make working with Docker faster and easier on your local machine.

- `build` Builds your container from the instructions in your Dockerfile.
- `push` Pushes your container image to the Docker Hub repository specified in your make_env file.
- `bash` Logs into a running container via SSH.
- `shell` Starts your container and automatically logs into it via SSH.
- `run`  Runs the container with stdout.
- `start` Runs the container in daemon mode - it will run in the background and you can attach to it at any time.
- `restart` Starts a stopped container.
- `stop` Stops the running container.
- `rm` Removes your container.
- `release` Builds your container image and then pushes it to the Docker Hub repository specified in your make_env file.
- `init` An initialization command intended for seeding an application.  Blank by default.

# Troubleshooting
1.  If you are using Chrome and are experiencing issue with browser caching - try the steps outlined here to temporarily disable browser caching:  http://stackoverflow.com/questions/5690269/disabling-chrome-cache-for-website-development
FROM debian:latest

RUN apt update && apt upgrade -y && apt install -y php-fpm

# -F :  Force to run in background and ignore daemonize option from configuration file.
CMD ["php-fpm8.2", "-F"]
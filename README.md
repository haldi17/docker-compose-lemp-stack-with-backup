# Docker Compose LEMP Stack

This repository contains `docker compose` configuration to start a `LEMP (Linux, Nginx, MariaDB(Mysql), PHP, phpMyAdmin)` stack.

## Configuration

You can also set the following environment variables, for example in the included `.env` file:

| Image Tags           | Description                                                     |
| -------------------- | --------------------------------------------------------------- |
| PHP_IMAGE_TAG        | PHP Docker image tag goes here. The default is "latest".        |
| MARIADB_IMAGE_TAG    | MariaDB Docker image tag goes here. The default is "latest".    |
| NGINX_IMAGE_TAG      | Nginx Docker image tag goes here. The default is "latest".      |
| PHPMYADMIN_IMAGE_TAG | phpMyAdmin Docker image tag goes here. The default is "latest". |

| Image Tags            | Description                                                                                                 |
| --------------------- | ----------------------------------------------------------------------------------------------------------- |
| MARIADB_USER          | MariaDB user goes here. Example: "user_test".                                                               |
| MARIADB_PASSWORD      | MariaDB password goes here. Example: "123456".                                                              |
| MARIADB_ROOT_PASSWORD | MariaDB root password goes here. Example: "123456".                                                         |
| MARIADB_DATABASE      | MariaDB database name goes here. Example: "db_test".                                                        |
| NGINX_HOST            | Nginx host goes here. Example: "localhost".                                                                 |
| NGINX_PORT            | Nginx port goes here. Example: "80".                                                                        |
| PMA_HOST              | phpMyAdmin host goes here. Should be the same as the container_name for mariadb in the docker-compose file. |
| MYSQL_ROOT_PASSWORD   | MySQL root password, which is the same as the MARIADB_ROOT_PASSWORD                                         |
| MYSQL_USER            | User for MySQL, same as the MARIADB_USER                                                                    |
| MYSQL_PASSWORD        | Password for MySQL, same as the MARIADB_PASSWORD                                                            |

## Nginx configurations

The Nginx configuration file is located at nginx/nginx.conf. Additionally, the default.conf file in the sites directory serves as the default configuration for handling requests. For individual applications or sites, you can create separate configuration files named $domain.conf in the sites directory to handle requests specific to each domain.

## Usage

To use it, simply follow the following steps:

##### Clone this repository.

Clone or download the repository.

##### Start the server.

Start the server using the following command inside the directory you just cloned: `docker compose up`.

## Entering the containers

You can use the following command to enter a container:

Where `{CONTAINER_NAME}` is one of:

`docker exec -ti {CONTAINER_NAME} /bin/bash`

## Monitor the containers

You can use the following command to see containers status:

`docker ps -a`

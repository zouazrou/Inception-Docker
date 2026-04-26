This project has been created as part of the 42 curriculum by **zouazrou**.

## Description
Set up a complete infrastructure using Docker Compose, creating and managing multiple containerized services (LEMP stack) consisting of Linux, Nginx (pronounced "Engine-X") with SSL/TLS, MariaDB, and WordPress with PHP-FPM.

## Features
* **NGINX**: Secure web server using TLSv1.3.
* **MariaDB**: Relational database with custom initialization scripts.
* **WordPress**: Website management system running on PHP-FPM.
* **Docker Compose**: Orchestrates services, networks, and persistent volumes.

## Instructoins
1. Clone the repository and enter the folder:
```bash
    git clone https://github.com/zouazrou/INCEPTION.git
    cd INCEPTION
```
2. Build image and Run containers :
```bash
    make all
```
3. Stop and Remove containers
```bash
    make clean
```

4. Remove containers, images, volumes and network 
```bash
    make fclean
```

## Resources

* `Docker Deep Dive book`
* [Docker Training Course for the Absolute Beginner](https://kodekloud.com/courses/docker-for-the-absolute-beginner)
* [the reference documentation for the Docker](https://docs.docker.com/reference/)
* [Nginx Essentials: Installation and Configuration Troubleshooting](https://www.digitalocean.com/community/tutorials/nginx-essentials-installation-and-configuration-troubleshooting)

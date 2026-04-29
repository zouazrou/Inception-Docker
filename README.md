This project has been created as part of the 42 curriculum by **zouazrou**.

## Description
Set up a complete infrastructure using Docker Compose, creating and managing multiple containerized services (LEMP stack) consisting of Linux, Nginx (pronounced "Engine-X") with SSL/TLS, MariaDB, and WordPress with PHP-FPM.
### Virtual Machines vs Docker
* `Virtual Machines` are virtualization technology that emulate **virtual new computer**,including it own Kernal, Desktop applications, os utilities and etc, that make it large, and hard to managment and monitoring.
* while `Docker` is **modern containerization technology** to create isolated environment for one or few applications but without the need entire OS (Kernal, utilities, etc) with only application's requirements(libraries, binaries, and configuration files). Unlike VMs, containers share the same Host kernal. these advantanges making them much more lightweight, faster to start, and efficient than VMs.
### Secrets vs Environment Variables
### Docker Network vs Host Network
### Docker Volumes vs Bind Mounts

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

* ***Docker Deep Dive*** book by *Nigel Poulton*
* [Docker Training Course for the Absolute Beginner](https://kodekloud.com/courses/docker-for-the-absolute-beginner)
* [the reference documentation for the Docker](https://docs.docker.com/reference/)
* [Nginx Essentials: Installation and Configuration Troubleshooting](https://www.digitalocean.com/community/tutorials/nginx-essentials-installation-and-configuration-troubleshooting)

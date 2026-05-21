This project has been created as part of the 42 curriculum by **zouazrou**.

## Description
Set up a complete infrastructure using Docker Compose, creating and managing multiple containerized services (LEMP stack) consisting of Linux, Nginx (pronounced "Engine-X") with SSL/TLS, MariaDB, and WordPress with PHP-FPM.
### Virtual Machines vs Docker
* **Virtual Machines** are virtualization technology that emulate **New virtual computer**, including its own kernel, Desktop applications, OS utilities, etc. That make it large, slow to boot up, and hard to management and monitoring.
* While **Docker** is **modern containerization technology** to create isolated environment for one or few applications but without needing entire OS (kernel, utilities, etc) with only application's requirements(libraries, binaries, and configuration files). Unlike VMs, containers share the same Host kernel. These advantages making them much more lightweight, faster to start, and efficient than VMs.
### Secrets vs Environment Variables
* **Secrets**: A secure way to manage sensitive data (e.g., API key, passwords, service credentials...) without hardcoding them. It is encrypted and stored securely.
* **Environment variables**: A method to store configuration in key-value pairs. There are less secure for sensitive data because they are unencrypted and easier to expose.
### Docker Network vs Host Network
* **Docker Network (Bridge):** The default behavior. It creates an isolated virtual network for your containers. Containers can communicate with each other using service names (via Docker's built-in DNS), keeping your host system's ports isolated.
* **Host Network:** The container shares the host's networking namespace directly. The container does not get its own IP address, essentially giving it full access to the host's network interfaces.
### Docker Volumes vs Bind Mounts
* **Docker Volumes:** Managed entirely by Docker engine and stored in a dedicated location in the host file system (`/var/lib/docker/volumes/`). They are safer, completely isolated from host processes, and are the recommended way to persist data for databases like MariaDB.
* **Bind Mounts:** Link specific paths on the host filesystem directly into the container, offering real-time synchronization and direct host access, which makes them ideal for development
## Features
* **NGINX**: Secure web server using TLSv1.3.
* **MariaDB**: Relational database with custom initialization scripts.
* **WordPress**: Website management system running on PHP-FPM.
* **Docker Compose**: Orchestrates services, networks, and persistent volumes.

## Instructions
1. Clone the repository and enter the folder:
```bash
git git@github.com:zouazrou/Inception-Docker.git
cd Inception-Docker
```
2. Build image and Run containers:
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
* [the reference documentation for Docker](https://docs.docker.com/reference/)
* [Nginx Essentials: Installation and Configuration Troubleshooting](https://www.digitalocean.com/community/tutorials/nginx-essentials-installation-and-configuration-troubleshooting)
* [Configuring the FTP Server](https://docs.openeuler.org/en/docs/22.03_LTS/docs/Administration/configuring-the-ftp-server.html)
* [Redis configuration](https://redis.io/docs/latest/operate/oss_and_stack/management/config/)
## AI Usage
- Help in creating configuration and troubleshooting of Docker and services.
- Correcting grammar and improving readability of documentation.
- Providing review and suggestions for the project structure.
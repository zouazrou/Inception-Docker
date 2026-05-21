# Developer Documentation

## Project Setup

### Prerequisites
- Docker and Docker Compose installed
- Linux environment
- 2GB free disk space

### Building the Project

```bash
make all      # Build images and start containers
make clean    # Stop containers (keep volumes)
make fclean   # Remove everything (containers, images, volumes)
```

## Architecture

Three services connected via custom bridge network:

- **NGINX**: Web server (port 443, TLSv1.3)
- **WordPress**: PHP-FPM application (port 9000)
- **MariaDB**: Database (port 3306)

## Directory Structure

```
srcs/
├── docker-compose.yml
└── requirements/
    ├── nginx/
    ├── wordpress/
    └── mariadb/
```

## Configuration

All services configured via `.env` file:
- Database credentials
- WordPress admin credentials
- Domain name

## Volumes

- `wordpress_files`: WordPress files
- `mariadb_data`: Database files
- `db_backups`: Database backups
Data persists across container restarts.

## Networking

Services communicate via custom Docker network using service names (DNS).

## Security

- TLSv1.3 encryption enabled
- Credentials in `.env` (not in git)
- Database isolated within Docker network
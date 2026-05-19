# User Documentation

## Quick Start

### Prerequisites
- Docker and Docker Compose installed
- Linux environment
- 2GB free disk space

### Starting

```bash
git git@github.com:zouazrou/Inception-Docker.git
cd INCEPTION
make all
```

### Accessing Services

#### WordPress
- **URL**: https://localhost
- **Admin**: https://localhost/wp-admin
- **Username**: `admin`
- **Password**: See `.env` file (`WP_ADMIN_PASS`)

#### MariaDB
- **Host**: `mariadb`
- **Port**: `3306`
- **Root Password**: See `.env` file (`DB_ROOT_PASS`)
- **Database User**: `wordpress`
- **Database Password**: See `.env` file (`DB_PASS`)

### Commands

```bash
make clean   # Stop containers (keep data)
make fclean  # Remove everything
```

## Data Persistence

Data stored in Docker volumes:
- `nginx_vol`: SSL certificates
- `wordpress_vol`: WordPress files
- `mariadb_vol`: Database files

All data persists after `make clean`. Use `make fclean` to delete data.

## Troubleshooting

```bash
# Check logs
docker logs <service_name>

# Verify services running
docker ps
```
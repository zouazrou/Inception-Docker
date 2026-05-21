# User Documentation

## Quick Start

### Prerequisites
- Docker and Docker Compose installed
- Linux environment
- 2GB free disk space

### Starting

```bash
git git@github.com:zouazrou/Inception-Docker.git
cd Inception-Docker
make all
```

### Accessing Services

#### WordPress
- **URL**: https://zouazrou.42.fr
- **Admin**: https://zouazrou.42.fr/wp-admin
- **Username**: See `.env` file (`WP_ADMIN_USER`)
- **Password**: See `.env` file (`WP_ADMIN_PASS`)

#### MariaDB
- **Host**: `mariadb`
- **Port**: `3306`
- **Root Password**: See `.env` file (`DB_ROOT_PASS`)
- **Database User**: See `.env` file (`DB_USER`)
- **Database Password**: See `.env` file (`DB_PASS`)
#### ftp
- **Host**: `ftp://zouazrou.42.fr`
- **Port**: `21`
- **Username**: See `.env` file (`FTP_USER`)
- **Password**: See `.env` file (`FTP_PASS`)
#### static-website
- **Command**: `curl http://zouazrou.42.fr`
#### redis
- **Host**: see `.env` file (`REDIS_HOST`)
- **Port**: see `.env` file (`REDIS_PORT`)
- docker exec -it redis redis-cli

### Commands


```bash
make clean   # Stop containers (keep data)
make fclean  # Remove everything
```

## Data Persistence

Data stored in Docker volumes:
- `wordpress_data`: WordPress files
- `mariadb_data`: Database files
- `db_backups`: Database backups

All data persists after `make clean`. Use `make fclean` to delete data.

## Troubleshooting

```bash
# Check logs
docker logs <service_name>

# Verify services running
docker ps
```
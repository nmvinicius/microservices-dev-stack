# Microservice Dev Stack

Microservice Dev Stack is a local infrastructure for developing and testing services with HTTPS support and proxies configured via Nginx.

## Configured Services

- **Nginx Proxy Server**: Configured to manage reverse proxies and HTTPS. Refer to the setup guide in [SETUP.md](server/SETUP.md).
- **Certificates**: Self-signed certificates located in `server/config/certs`. **Warning**: Do not use these certificates in production environments.

## Project Structure

- `server/`: Nginx server configurations, including certificates and configuration files.
- `storage/`: MinIO service configuration for S3 storage.
- `messaging/`: RabbitMQ configuration for messaging.
- `auth/`: Keycloak authentication service.
- `database/`: PostgreSQL and Adminer database services.

## How to Set Up

1. Clone the repository:
   ```bash
   git clone https://github.com/nmvinicius/microservices-dev-stack.git
   cd microservices-dev-stack
   ```

2. Start the services using Docker Compose:
   ```bash
   docker-compose up -d
   ```

3. Access the services:
   - Nginx Proxy: [Server](https://localhost)
   - Adminer: [Adminer](https://adminer.localhost)
   - RabbitMQ UI: [Messaging](https://messaging.localhost)
   - Keycloak: [Auth](https://auth.localhost)
   - Minio: [Storage](https://storage.localhost) (s3.storage.localhost)

## Important Notes

- Self-signed certificates are for local development only.
- Ensure that `.env` files are properly configured for credentials and environment variables.

## Useful Links

- [Nginx Documentation](https://nginx.org/en/docs/)
- [Docker Compose](https://docs.docker.com/compose/)
- [MinIO](https://min.io/)
- [RabbitMQ](https://www.rabbitmq.com/)
- [Keycloak](https://www.keycloak.org/)
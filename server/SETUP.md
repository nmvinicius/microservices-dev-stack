# How to Configure the Server (Nginx)

This guide explains how to configure the server for local development using Nginx, including setting up hosts, Docker, and restarting services.

---

## 1. Update `/etc/hosts`

Add the following entries to your `/etc/hosts` file to map local domains to `127.0.0.1`:

```conf
127.0.0.1 adminer.localhost auth.localhost admin-auth.localhost messaging.localhost storage.localhost s3.localhost
```

---

## 2. Configure Docker

Update your Docker daemon configuration to disable the userland proxy and enable iptables. Add the following to your Docker configuration file (e.g., `/etc/docker/daemon.json`):

```json
{
  "userland-proxy": false,
  "iptables": true
}
```

After making changes, restart the Docker service:

```shell
sudo systemctl restart docker
```

---

## 3. Restart Services

Ensure all services are restarted to apply the changes. Use the following command to restart the Docker containers:

```shell
docker-compose restart
```

---

## 4. Validate Wildcard Certificate

To ensure the wildcard certificate (`*.localhost`) is correctly installed and trusted:

1. Locate the certificate file:
   ```
   server/config/certs/wildcard.localhost.crt
   ```

2. Add the certificate to your system's trusted certificates:
   - **Linux**:
     ```shell
     sudo cp server/config/certs/wildcard.localhost.crt /usr/local/share/ca-certificates/
     sudo update-ca-certificates
     ```

   Ensure the output shows the certificate chain and no errors.

---

## Notes

- Make sure you have the necessary permissions to edit system files like `/etc/hosts` and `/etc/docker/daemon.json`.
- These configurations are intended for local development only and should not be used in production environments.


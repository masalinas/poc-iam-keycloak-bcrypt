# Description
Deploy a keycloak service with PostgreSQL and BCrypt Password Hash Provider installed.

## Deploy the service
```shell
docker-compose up
```

## Configure Keycloak
We must create a new Password Policy including:
- Hashing Algorithm: bcrypt
- Hashing Iterations: 5 (for example)

![BCrypt Password Policy](captures/bcrypt_configuration.png "BCrypt Password Policy")

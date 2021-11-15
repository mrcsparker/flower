# Flower

Flower is a sample project that integrates MLFlow with Apache Superset via PostgreSQL.

## Install

```sh
> multipass shell ${your-env}
```

https://towardsdatascience.com/setup-mlflow-in-production-d72aecde7fef

```sh
# Install postgresql
> sudo apt install postgresql postgresql-contrib postgresql-server-dev-all

# Switch to postgres account
> sudo -u postgres psql

# Now run postgres
postgres=> CREATE DATABASE mlflow_db;
postgres=> CREATE USER mlflow_user WITH ENCRYPTED PASSWORD 'mlflow';
postgres> GRANT ALL PRIVILEGES ON DATABASE mlflow_db TO mlflow_user;
```




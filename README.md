# Northwind database for Mongodb

A simple script that will populate a database with the famous northwind example,
adapted for mongodb.

## Getting started:

### Manually

Use the provided shell file `mongo-import.sh` in order to populate your database.

### With Docker and docker compose

#### Pre-requirement: install docker and docker-compose

https://www.docker.com/get-started

https://docs.docker.com/compose/install/

#### 1. run docker-compose

```bash
> docker-compose up

...
... Lots of messages...
...
Creating clase-02_mongodb_container_1 ... done
Creating clase-02_mongo_seed_1        ... done
Attaching to clase-02_mongodb_container_1, clase-02_mongo_seed_1
```

#### 2. run psql client in the docker-compose container

Open another terminal window, and type:

```bash
> docker exec -it clase-02_mongodb_container_1 mongo -u root -p rootpassword --authenticationDatabase admin

MongoDB shell version v4.4.0
connecting to: mongodb://127.0.0.1:27017/?authSource=admin&compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("3aabbb34-d7b3-40d2-b2b8-a97ebe30922e") }
MongoDB server version: 4.4.0
---
        Enable MongoDB''s free cloud-based monitoring service, which will then receive and display
        metrics about your deployment (disk utilization, CPU, operation statistics, etc).

        The monitoring data will be available on a MongoDB website with a unique URL accessible to you
        and anyone you share the URL with. MongoDB may use this information to make product
        improvements and to suggest MongoDB products and deployment options to you.

        To enable free monitoring, run the following command: db.enableFreeMonitoring()
        To permanently disable this reminder, run the following command: db.disableFreeMonitoring()
---
>
```

#### 3. stop docker-compose

Stop the server that was launched by `docker compose up` via `Ctrl-C`, then remove the containers via:

```bash
docker-compose down
```

Your modifications will be persisted in the `mongodb_data_container/` local folder, and can be retrieved
once you restart `docker compose up -d`.

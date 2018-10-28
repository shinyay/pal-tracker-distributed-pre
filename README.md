# pal-tracker-distributed-pre

## Setup Database

```
$ docker-compose up -d
$ mysql -h127.0.0.1 -uroot -pmysql < databases/create_databases.sql
$ ./gradlew devMigrate testMigrate
```


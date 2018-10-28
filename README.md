# pal-tracker-distributed-pre

## Setup Database

```
$ docker-compose up -d
$ mysql -h127.0.0.1 -uroot -pmysql < databases/create_databases.sql
$ ./gradlew devMigrate testMigrate
```

```
$ mysql -h127.0.0.1 -utracker -ptracker

mysql> SELECT user, host FROM mysql.user;
+---------------+-----------+
| user          | host      |
+---------------+-----------+
| root          | %         |
| tracker       | %         |
| mysql.session | localhost |
| mysql.sys     | localhost |
| root          | localhost |
+---------------+-----------+
5 rows in set (0.00 sec)

mysql> SHOW GRANTS;
+----------------------------------------------+
| Grants for tracker@%                         |
+----------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'tracker'@'%' |
+----------------------------------------------+
1 row in set (0.00 sec)

mysql> \q

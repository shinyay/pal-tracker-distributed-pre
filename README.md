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

## Migrate PCF from Local

```
$ cf env tracker-allocations

システム提供:
{
 "VCAP_SERVICES": {
  "p-mysql": [
   {
    "binding_name": null,
    "credentials": {
     "hostname": "192.168.8.15",
     "jdbcUrl": "jdbc:mysql://192.168.8.15:3306/cf_69eeac71_6a50_44f9_ad43_9b2baaec1b45?user=TQXDDAen5VvqDrR1\u0026password=dXekg1ZYOY07p561",
     "name": "cf_69eeac71_6a50_44f9_ad43_9b2baaec1b45",
     "password": "dXekg1ZYOY07p561",
     "port": 3306,
     "uri": "mysql://TQXDDAen5VvqDrR1:dXekg1ZYOY07p561@192.168.8.15:3306/cf_69eeac71_6a50_44f9_ad43_9b2baaec1b45?reconnect=true",
     "username": "TQXDDAen5VvqDrR1"
    },
    "instance_name": "tracker-allocations-database",
    "label": "p-mysql",
    "name": "tracker-allocations-database",
    "plan": "100mb",
    "provider": null,
    "syslog_drain_url": null,
    "tags": [
     "mysql",
     "relational"
    ],
    "volume_mounts": []
   }
  ]
 }
}
```

```
$ cf ssh -N -L 63306:192.168.8.15:3306 tracker-allocations
```

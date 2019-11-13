# Ubuntu client image

## What's this

Ubuntu client with

- httpie, curl
- mysql-client

## Run

```sh
$ docker run -it --rm --network YOURNETWORK ytabuchi/client
```

For example, you can run some commands below in the container:

publish POST http request to `httpbin.org`.

```sh
# http httpbin.org/anything X-token:123
```

publish SQL query.

```sh
# mysql -h HOSTNAME -D DATABASE -u USER -p

mysql> select * from TABLE where id=1;
+----+---------+---------+
| ID | Column1 | Column2 |
+----+---------+---------+
|  1 | data1   | value2  |
+----+---------+---------+
1 row in set (0.01 sec)
```

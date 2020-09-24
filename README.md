# Ubuntu client image


## What's this

Ubuntu client with below tools for network and sql operation to other docker containers.

- ping, ipconfig
- httpie, curl
- mysql-client
- postgresql-client



## Run

```sh
$ docker run -it --rm --network YOURNETWORK ytabuchi/net-client
```

For example, you can run some commands below in the container:

### publish http request to `httpbin.org`

```sh
# http httpbin.org/anything X-token:123

HTTP/1.1 200 OK
Access-Control-Allow-Credentials: true
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 408
Content-Type: application/json
Date: Thu, 24 Sep 2020 04:23:44 GMT
Server: gunicorn/19.9.0

{
    "args": {},
    "data": "",
    "files": {},
    "form": {},
    "headers": {
        "Accept": "*/*",
        "Accept-Encoding": "gzip, deflate",
        "Host": "httpbin.org",
        "User-Agent": "HTTPie/0.9.8",
        "X-Amzn-Trace-Id": "Root=X-XXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXXX",
        "X-Token": "123"
    },
    "json": null,
    "method": "GET",
    "origin": "XXX.XXX.XXX.XXX",
    "url": "http://httpbin.org/anything"
}
```

### publish SQL query

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

```sh
# psql -h HOSTNAME -d DATABASE -U USER

postgres-# select * from TABLE where id=1;
 id | column1 | column2 
----+---------+---------
  1 | data1   | value2
(1 row)
```

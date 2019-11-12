# Ubuntu client image

## What's this

Ubuntu client with

- httpie, curl
- mysql-client

## Run

```sh
docker run -it --rm --network <YOURNETWORK> ytabuchi/client
```

For example, you can run some commands below in the container:

publish POST http request to `httpbin.org`.

```sh
http httpbin.org/anything X-token:123
```

publish SQL query.

```sh

```

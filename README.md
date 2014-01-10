docker-rdb-parser
=================

Docker image that reads a .rdb file from stdin and prints redis protocol text onto stdout

## example

Pipe the contents of a redis .rdb file into the container and it will print redis commands back:

```
$ cat /var/myredis/dump.rdb | docker run -i quarry/rdb-parser
```

Redis protocol commands will be printed back on stdout

## Dockerfile

```
FROM quarry/python

RUN pip install rdbtools
ADD ./convert.sh /usr/bin/rdbconvert
RUN chmod a+x /usr/bin/rdbconvert

ENTRYPOINT ["/usr/bin/rdbconvert"]
```

# ApacheAB
Apache Benchmark (ab) is a command-line tool that can be used to perform performance tests on web servers. With ab, you can simulate traffic from multiple users on a web server, measure the server's response time, and obtain information about the server's capacity to handle the load.

# How to use the tool

Command to start the container along with the command to send stress test requests:
```
$ docker run --rm marcosvile/ab -n 2000 -c 200 https://[url]/
```

Details of the flags used in the apache-benchmark command:

`docker run --rm marcosvile/ab` - docker run to start the container and the `--rm` flag indicates that the container will be removed at the end of the execution, leaving no residue after execution.

`-n 2000` - number of requests executed for the test

`-c 200` - number of simultaneous requests that will be executed

after the specified flags, pass the target address, in this case, the target URL of the test - https://`[url]`/

At the end of the test, you will receive a report output in the terminal.

Notes:
If you receive an Invalid URL error, you probably forgot to end your URL with a slash (/). Apache-benchmark is strict about this.

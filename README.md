# docker pen load balancer

A load balancer for simple udp, tcp based protocols such as http or smtp for Unix.

### Build Docker image
```
docker build -t pen:latest .
```

### Run a container on TCP / UDP 
```
docker run -d -p 5050:5050 --name PENELB -e UDP_PORT=5050 -e UDP_BACKENDS='192.168.1.1 192.168.1.2'
```

```
docker run -d -p 8080:8080 --name PENELB -e TCP_PORT=8080 -e TCP_BACKENDS='192.168.1.1 192.168.1.2'
```

# Install Source++ with Docker or Docker Compose

You can install Source++ with Docker or Docker Compose if you are evaluating, testing, or developing Source++.
For production, we recommend installing with Kubernetes.

## Prerequisites

- [Docker](https://docs.docker.com/install)
- [Docker Compose](https://docs.docker.com/compose/install) (optional, only needed for the Docker Compose install method)

## Install with Docker

Run the following commands in your command line.

### spp-platform network

```bash
docker network create spp-platform
```

### Redis
```bash
docker run --name redis -d --network spp-platform -it redis:6.2.1
```

### Source++ Platform
```bash
docker run --name spp-platform --restart always -p 5445:5445 -d --network spp-platform -e SPP_CLUSTER_URL=localhost -e SPP_CLUSTER_NAME=docker -e SPP_REDIS_HOST=redis -e SPP_SKYWALKING_HOST=skywalking -e SPP_DISABLE_TLS=true -e SPP_DISABLE_JWT=true -it sourceplusplus/spp-platform:0.1.19
```

### Elasticsearch

```bash
docker run --name es-server -d --network spp-platform --ulimit nofile=65536:65536 -e "node.name=node-1" -e "cluster.name=es-skywalking" -e "network.host=0.0.0.0" -e "path.logs=logs" -e "path.data=data" -it blacktop/elasticsearch:7.0.0
```

### Apache SkyWalking (incl. Source++ processor)
```bash
docker run --name skywalking-oap --restart always -d --network spp-platform -e SW_STORAGE=elasticsearch -e SW_STORAGE_ES_CLUSTER_NODES=es-server:9200 -e SPP_PLATFORM_HOST=spp-platform -e SPP_PLATFORM_PORT=5460 -e SPP_DISABLE_TLS=true -it sourceplusplus/spp-oap-server:0.1.19
```

Navigate to http://localhost:5445/stats to view the metrics and http://localhost:5445/health for readiness.

## Install with Docker Compose

Run the following commands in your command line.

```bash
wget https://raw.githubusercontent.com/sourceplusplus/live-platform/main/docker/docker-compose.yml
docker-compose -f docker-compose.yaml up
```

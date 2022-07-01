# Installation

In general, there are three steps that are necessary to set up Source++:

1. Boot the Source++ Live Platform
1. Attach the Source++ Agent
1. Connect the Source++ Plugin

The first step is to boot the Source++ Live Platform. This following instructions will walk you through the process of booting the platform. The recommended approach for booting the platform is via [Docker](#docker).

## Docker

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Setup

1. Download the [docker-compose.yml](https://github.com/sourceplusplus/live-platform/blob/master/docker/docker-compose.yml) file into a new empty directory (can be anywhere).

    ```sh
    mkdir ~/spp-platform && cd ~/spp-platform
    curl -O "https://raw.sourceplus.plus/live-platform/master/docker/docker-compose.yml"
    ```

2. Start services

    ```sh
    docker-compose up -d
    ```

## Bare-metal

### Prerequisites

- [Java 11+](https://www.oracle.com/java/technologies/downloads/)

### Setup

1. Download the latest release at [spp-platform-{{ spp.latest_version }}.tar.gz](https://github.com/sourceplusplus/live-platform/releases/download/{{ spp.latest_version }}/spp-platform-{{ spp.latest_version }}.tar.gz)
2. (Optional) Modify spp-platform.yml
    1. View available configuration options [here](http://127.0.0.1:8000/implementation/tools/platform/configuration/)
3. Boot the platform
```sh
java -jar spp-platform-{{ spp.latest_version }}.jar
```

## Troubleshooting

If installation fails, check the list of common installation issues. If your problem is not listed, please open a new issue or discussion on [GitHub](https://github.com/sourceplusplus/live-platform), and we will try to help you.

---

Once the platform is successfully booted, the next step is to attach the Source++ Live Probe. Continue to the next section for instructions on how to attach the probe.

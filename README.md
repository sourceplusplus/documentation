
![](https://raw.githubusercontent.com/sourceplusplus/live-platform/7499e55842712c5ded71ca683290774785debc67/.github/media/sourcepp_logo.svg)
 

>  The open-source live coding platform

[![License](https://img.shields.io/github/license/sourceplusplus/live-platform)](LICENSE) ![GitHub release](https://img.shields.io/github/v/release/sourceplusplus/live-platform?include_prereleases) [![Build](https://github.com/sourceplusplus/live-platform/actions/workflows/build.yml/badge.svg)](https://github.com/sourceplusplus/live-platform/actions/workflows/build.yml)

<p align="center"> 
<br />
<a href="https://github.com/sourceplusplus/documentation"><strong>Explore the docs >></strong></a>
<br /><br />
<a href="https://github.com/sourceplusplus/documentation"><strong>View Demo</strong></a>
.
<a href="https://github.com/sourceplusplus/live-platform/issues"><strong>Report Bug</strong></a>
.
<a href="https://github.com/sourceplusplus/live-platform/issues"><strong>Request Feature</strong></a>
</p>
<br/>

<!-- 	ABOUT THE PROJECT -->
## About the Project

### Introduction
Source++ is the open-source live coding platform built to assist in the debugging and development of actively-running production software. Source++ works by enhancing your application's code through safe and completely reversible runtime modifications.

### Built With
Source++ is proudly built on top of [Apache SkyWalking](https://skywalking.apache.org), an application performance monitor tool for distributed systems, especially designed for microservices, cloud native and container-based (Kubernetes) architectures.

<!-- GETTING STARTED -->
## Getting Started
  
  **There are two main ways to use the service:**
 
 1. Using `Source++ Live Platform + Source++ Probe + Source++ Plugin`

2. Using `SkyWalking OAP + SkyWalking Agent + Source++ Plugin`

**Prerequisites**

 JVM:
- Git
-  JDK 11
-  [Docker](https://docs.docker.com/engine/install)
-  [Docker Compose](https://docs.docker.com/compose/install/)
-  [JetBrains IDE](https://www.jetbrains.com)
    -   IntelliJ IDEA Community — 2020.2 — 2021.2.3
    -   IntelliJ IDEA Educational — 2020.2 — 2021.2.3
    -   IntelliJ IDEA Ultimate — 2020.2 — 2021.2.3
    -   Android Studio — 202.4357 — 213.*
   
    
  Python:
- Git
-   [Docker](https://docs.docker.com/engine/install)
-  [Docker Compose](https://docs.docker.com/compose/install/)
-   [PyCharm IDE](https://www.jetbrains.com/pycharm/)
    -   PyCharm Community — 2020.2 — 2021.2.3
    -   PyCharm Educational — 2020.2 — 2021.2.3
    -   PyCharm Ultimate — 2020.2 — 2021.2.3
    

## 1.  Setup Using	 `Source++ Live Platform  And Source++ Probe`

#### JVM:
	
1. To integrate Source++ to your already existing JVM project, proceed to download the Source++ java probe and .yml file.  Add  both the `spp-probe-*.jar` and `spp-probe.yml` files to the same directory (project root folder).
    -   E.g. [spp-probe-0.4.6.jar](https://github.com/sourceplusplus/probe-jvm/releases/download/0.4.6/spp-probe-0.4.6.jar) & [spp-probe.yml](https://docs.sourceplusplus.com/implementation/tools/probe/configuration/)
   
	 To view and  download other releases of the project, do [visit](https://github.com/sourceplusplus/probe-jvm/releases/)

2.  Download the [docker-compose](https://github.com/sourceplusplus/live-platform/blob/master/docker/docker-compose.yml) file for Source++ platform and Skywalking OAP. Place it in the same directory as step 1 above (optional, can be anywhere).  While inside the directory,  run the services using  the docker-compose command as below:

	- E.g  `docker-compose up`
 
3.  Boot application with `-javaagent:spp-probe-*.jar` parameter
    -   E.g. `java -javaagent:/opt/spp-platform/spp-probe-0.4.6.jar -jar MyApp.jar`

<!--Sample structure for JVM applications:
![tut-java.png](https://github.com/sourceplusplus/tutorial-jvm/blob/master/img/tut-java.png?raw=true)-->

To view and test out how the service for JVM, do use our [Java tutorial](https://github.com/sourceplusplus/tutorial-jvm) section to experiment with our sample java project.

#### Python:

 1. Install the Source++ package as below:
     `pip install sourceplusplus`
  
 2. Attach:
      ```python
      from sourceplusplus.SourcePlusPlus import SourcePlusPlus SourcePlusPlus().attach()
      ```
	
 3.  Add `spp-probe.yml` to working directory (or set `SPP_PROBE_CONFIG_FILE` env):
		```yml
		spp:
		  platform_host: "localhost"
		  disable_tls: true
		skywalking:
		  collector:
		    backend_service: "localhost:11800"
		```
		Or construct with dict:

		```python
		from sourceplusplus.SourcePlusPlus import SourcePlusPlus
		SourcePlusPlus({
		    "spp.platform_host": "localhost",
		    "spp.disable_tls": True,
		    "skywalking.collector.backend_service": "localhost:11800"
		}).attach()
		```

<!--Sample structure for Python applications:
![](https://github.com/sourceplusplus/tutorial-python/raw/master/img/tut-python.png)-->

To view and test out how the service for python, do use our [Python tutorial](https://github.com/sourceplusplus/tutorial-python) section to experiment with our sample python project.

## 2.  Setup Using `SkyWalking OAP And SkyWalking Agent`
#### JVM:

1.  Add `spp-probe-*.jar` and `spp-skywalking-services-*.jar` to `skywalking-agent/plugins` directory
    -   E.g. [spp-probe-0.4.6.jar](https://github.com/sourceplusplus/probe-jvm/releases/download/0.4.6/spp-probe-0.4.6.jar) & [spp-skywalking-services-0.4.6.jar](https://github.com/sourceplusplus/probe-jvm/releases/download/0.4.6/spp-skywalking-services-0.4.6.jar)
2.  Add `spp-probe.yml` to `skywalking-agent/config` directory
    -   E.g. [spp-probe.yml](https://docs.sourceplusplus.com/implementation/tools/probe/configuration/)
3.  Reboot Apache SkyWalking agent

#### Python:

1. Install Apache Skywalking agent:
		`pip install "apache-skywalking"`
		
2. Attach:
```python
from skywalking import agent, config

config.init(collector_address='localhost:11800', service_name='your awesome service')
agent.start()
```


## Setup Plugin
Install the Source++ Plugin by downloading [https://drive.google.com/file/d/1pBrWN4uQBLjrWHAiUhdmQYk0yj6UcGi6/view?usp=sharing](https://drive.google.com/file/d/1pBrWN4uQBLjrWHAiUhdmQYk0yj6UcGi6/view?usp=sharing) and manually installing the local file and restarting the IDE after installation

**NOTE:**
For the integration of the packages to be successful, the correct order of things must be followed. The needed packages and libraries should first of all be downloaded and added to the correct directories as required, followed by the starting up of the either the Source++ or Skywalking services and then the installation of the Source++ plugin and subsequent restarting of the IDE after installation.

Also, using `docker-compose` cli is very much advised for this project.

#### To use Source++ Live Platform and Probe Or Skywalking OAP and Agent?

It should be noted that Source++ Live Platform runs in front of Skywalking OAP. When one is fully using Source++, one can access Skywalking but will be routed through Source++. This is how Source++ adds features like authentication and data redaction to Skywalking when these features aren't available when using Skywalking alone. This also allows Skywalking agents and Source++ probes to both successfully connect when using Source++. If the Skywalking agent connects, it'll be routed to Skywalking OAP. If a Source++ probe connects, it'll go through the Source++ functionality path.

Making a choice now depends on whether the intended use has need for the extra features which Source++ provides like authentication, data redaction, etc. Source++ provides all the base features which Skywalking provides as well as additional functionality and features which are unique to Source++.




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

<!-- GETTING STARTED -->
# Getting Started

This section is meant to work you through what you need to know about the platform, how it can help you improve monitoring experience in your live project and how to go about using it. In this getting started section, you will:

- Learn in more detail, what Source++ is all about.
- The platform's features, concepts and its key architecture.
- Various ways you can utilize the platform, differences between both and what you stand to gain or not by using any of both.
- Prerequisites to have before running the platform.
- How to boot and run the platform in Docker, Kubernetes and bare metal.
- How to attach the platform's agent/probe into your existing project as well as how to install the plugin.
- Where to go for more information and guidance.
  
## What is Source++ Live Coding Platform?
  
  Source++ is the open-source live coding platform built to assist in the debugging and development of actively-running production software. Source++ works by enhancing your application's code through safe and completely reversible runtime modifications. Source++ aims to move observability to the left, giving developers complete visibility into their software independent of the environment or deployment type, from monolith to microservices. This is achieved by giving developers the ability to dynamically capture exceptions, logs, metrics, traces, and other data points, which are traditionally only defined during the development phase. This allows developers to analyze issues straight from the environments in which they're running.

  Suppose a developer wants to observe additional metrics, logs, traces, exceptions, etc. on a deployed live project, Source++ provides the ability to do this in real-time without the need to restart the project to capture these details. This ensures that the developer doesn't witness any downtime that would have occurred when restarting the project to capture the details. Source++ achieves this by using the native agent of the deployed live project to these live probes to bytecode in a completely safe context utilizing its  instrument write protection which are additional safeguards that can be placed on Live Instruments that ensure Live Instruments do not have side effects beyond recording runtime data.

### Features
-    **Live Instruments**: These allow developers to easily debug live production applications without leaving their IDE. There are currently four types of live instruments:
		-   Live Breakpoint: (a.k.a. non-breaking breakpoints) are useful debugging instruments for gaining insight into the live variables available in production at a given scope.
		-   Live Log: (a.k.a. just-in-time logging) are quick and easy debugging instruments for instantly outputting live data from production without redeploying or restarting your application.
		-   Live Metric: Collect measurements such as process memory utilization, error rate, etc.  at run time
		-   Live Span: Source++ also facilitates collecting live tracing data.
-   **Multi-instance/Serverless debugging**
-   **Role-based access control**: The platform also allows you to define exactly how different developers use the platform for observability in your live project.
-   **Instrument conditionals**: The platform empowers developers to set requirements and conditions that need to be met for the instrument to record variables.
-   **Instrument TTL, sampling, rate limiting**: Using  the platform allows you to set for how long the instrument you have added will observe data as well as the rate at which the data is sampled and setting the upper cap rate at which data can be observed.
-   **Feedback whitelist/blacklist**
-   **PII redaction**: Mask and remove sensitive contents from being observed when using the instruments.

### Concepts and Key Architecture

Given below is an architecture overview of Source++ platform and how it relates to Skywalking OAP and clients.

![](https://docs.sourceplus.plus/assets/diagrams/spp-architecture.svg)
| Concept/Component | Description |
|:-----------------:|-------------|
| Platform/Controller | Source++ controller works by connecting developers via authorized clients to Skywalking OAP, which is in constant communication with a number of probes. |
|Probes/Agents|These are the tools that takes charge of collecting logs as well as telemetry data, including tracing and metrics. |
|Clients| These are the various ways/means through which a software developer can access the platform and utilize its various features. Whether it is through an IDE, the CLI or WEB (GraphQL), developers are able to use the platform to add the live instruments which will aid in observability as well as a host of other features.

### Ways to utilize the platform

There are two main ways to use the service:

 1. Using `Source++ Live Platform + Source++ Probe + Source++ Plugin`

2. Using `SkyWalking OAP + SkyWalking Agent + Source++ Plugin`

##### So, what are the  differences between both and what you stand to gain or not by using any of them?

It should be noted that Source++ Live Platform runs in front of [Skywalking OAP](https://skywalking.apache.org/). If one chooses to use the service using using option 1 above,  one can access Skywalking OAP but will be routed through Source++. This is how Source++ adds features like role-based authentication and PII redaction to Skywalking when these features aren’t available when using Skywalking alone. 

If a choice is made to use option 2 above, the client will be routed to Skywalking OAP with the only available features being that which is included in Skywalking. Making a choice now depends on whether the intended use has need for the extra features which Source++ provides like authentication, data redaction, etc. Source++ provides all the base features which Skywalking provides as well as additional functionality and features which are unique to Source++.

### Prerequisites
Before you begin, depending on whether you want to run the platform on bare-metal, Docker or Kubernetes, the following tools may be needed to run the platform successfully.

**For  JVM based projects**:
- Git
-  JDK 11
-  [Docker](https://docs.docker.com/engine/install)
-  [Docker Compose](https://docs.docker.com/compose/install/)
-  [JetBrains IDE](https://www.jetbrains.com)
    -   IntelliJ IDEA Community — 2020.2 — 2021.2.3
    -   IntelliJ IDEA Educational — 2020.2 — 2021.2.3
    -   IntelliJ IDEA Ultimate — 2020.2 — 2021.2.3
    -   Android Studio — 202.4357 — 213.*
  - [Kubernetes](https://kubernetes.io/)
    
  **For Python based projects**:
- Git
-   [Docker](https://docs.docker.com/engine/install)
-  [Docker Compose](https://docs.docker.com/compose/install/)
-   [PyCharm IDE](https://www.jetbrains.com/pycharm/)
    -   PyCharm Community — 2020.2 — 2021.2.3
    -   PyCharm Educational — 2020.2 — 2021.2.3
    -   PyCharm Ultimate — 2020.2 — 2021.2.3
   - [Kubernetes](https://kubernetes.io/)

## How to use

In general, there are three steps that need to be fulfilled to set up Source++:

-   You need to boot Source++ Live Platform or SkyWalking OAP depending on developer choice.
-   You need to attach Source++ Agent or SkyWalking Probe
-   You need to install Source++ Plugin

Each step is achieved similarly regardless if you choose SkyWalking or Source++ for the Platform/OAP and Agent/Probe steps.


## Setup Using	 `Source++ Live Platform  And Source++ Probe`

### Step 1:  Boot Platform

- #### Bare-metal:
	1.  Download [spp-platform package](https://github.com/sourceplusplus/live-platform/releases/)
	2.  (Optional) Modify `spp-platform.yml`
	3.  Boot platform: `java -jar spp-platform-*.jar`

- #### Docker:
	1.  Download the [docker-compose](https://github.com/sourceplusplus/live-platform/blob/master/docker/docker-compose.yml) file for Source++ platform and Skywalking OAP.

	2. Boot the platform using  the docker-compose command as below:

	- E.g  `docker-compose up`

- ### Kubernetes:
	

----


### Step 2:  Attach Source++ Agent
- #### JVM Based Projects:
  1. Download the Java [agent](https://github.com/sourceplusplus/probe-jvm/releases/):
  2.  Add `spp-probe-*.jar` and `spp-probe.yml` to the same directory
    -   E.g. [spp-probe-0.4.6.jar](https://github.com/sourceplusplus/probe-jvm/releases/download/0.4.6/spp-probe-0.4.6.jar) &  [spp-probe.yml](https://docs.sourceplusplus.com/implementation/tools/probe/configuration/)
    
  3. Boot application with `-javaagent:spp-probe-*.jar` parameter
    -   E.g. `java -javaagent:/opt/spp-platform/spp-probe-0.4.6.jar -jar MyApp.jar`

- #### Python Based Projects:
	 1. Install the Source++ package as below:
	     `pip install sourceplusplus`
	  
	 2. Attach:
    ```python
    from sourceplusplus.SourcePlusPlus import SourcePlusPlus SourcePlusPlus().attach()
    ```

	3. Config:
	  Add `spp-probe.yml` to working directory (or set `SPP_PROBE_CONFIG_FILE` env):
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
---

### Step 3:   Setup Plugin:

Install the Source++ Plugin by downloading [https://drive.google.com/file/d/1pBrWN4uQBLjrWHAiUhdmQYk0yj6UcGi6/view?usp=sharing](https://drive.google.com/file/d/1pBrWN4uQBLjrWHAiUhdmQYk0yj6UcGi6/view?usp=sharing) and manually installing the local file and restarting the IDE after installation.

---

##  Setup Using `SkyWalking OAP And SkyWalking Agent`

### Step 1: Boot Platform:

- #### Bare-metal:
	

- #### Docker:   
	1.  Download the [docker-compose](https://github.com/apache/skywalking/blob/master/docker/docker-compose.yml) file for Skywalking OAP. 
	
	2. Boot the platform using  the docker-compose command as below:

	- E.g  `docker-compose up`

- ### Kubernetes:

	To read more about booting Skywalking OAP, please [see](https://skywalking.apache.org/docs/#SkyWalking).
---

### Step 2: Attach Probe:

#### JVM Based Projects:

1. Download the Java [agent](https://www.apache.org/dyn/closer.cgi/skywalking/java-agent):
 E.g  [spp-skywalking-services-0.4.6.jar](https://github.com/sourceplusplus/probe-jvm/releases/download/0.4.6/spp-skywalking-services-0.4.6.jar)

2.  Boot application with `-javaagent:spp-probe-*.jar` parameter
    -   E.g. `java -javaagent:/opt/spp-platform/spp-probe-0.4.6.jar -jar MyApp.jar`


	To read more about attaching Skywalking Java Agent, please [see](https://skywalking.apache.org/docs/skywalking-java/latest/readme/).

#### Python Based Projects:
1.   Install the latest version, using the default gRPC protocol to report data to OAP.
		`pip install "apache-skywalking"`

 2. Attach:
	  ```python
	from skywalking import agent
	agent.start()
	```
	or config:
	```python
	from skywalking import agent, config

	config.init(collector_address='localhost:11800', service_name='your awesome service')
	agent.start()
	```
	To read more about attaching Skywalking Python Agent, please [see](https://skywalking.apache.org/docs/skywalking-python/latest/readme).
---

### Step 3: Setup Plugin:

Install the Source++ Plugin by downloading [https://drive.google.com/file/d/1pBrWN4uQBLjrWHAiUhdmQYk0yj6UcGi6/view?usp=sharing](https://drive.google.com/file/d/1pBrWN4uQBLjrWHAiUhdmQYk0yj6UcGi6/view?usp=sharing) and manually installing the local file and restarting the IDE after installation.

---

**NOTE:**
For the integration of the packages to be successful, the correct order of things must be followed from Steps 1 through to 3.

Also, use of `docker-compose` CLI is very much advised for this project if you application uses docker.

### Additional Information:

To experiment with the service for python, visit [Python tutorial](https://github.com/sourceplusplus/tutorial-python) section to experiment with our sample python project.

To experiment with the service for JVM, visit [Java tutorial](https://github.com/sourceplusplus/tutorial-jvm) section to experiment with our sample java project.

To view additional information, visit our official [documentation](https://docs.sourceplus.plus).




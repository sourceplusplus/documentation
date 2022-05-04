# Comparing Source++

!!! info
    If you're not interested in alternative technologies and wish to get started using Source++, feel free to skip to the [Getting started](../getting-started) section.

Source++ exists within the realm of "Live-Coding", "Dynamic Observability", "Production Debugging", and related concepts. Being so, there are alternative solutions to Source++ which may be more suitable for your needs. The following comparison matrix shows the differences between Source++ and alternative solutions.

---

## Overview

### Core

|                               | [Source++](https://sourceplus.plus)                 | [Lightrun](https://lightrun.com)                    | [Rookout](https://rookout.com)             | [Thundra](https://thundra.io)              | [nerd.vision](https://nerd.vision)         | Terminology                                                                                                |
|-------------------------------|-----------------------------------------------------|-----------------------------------------------------|--------------------------------------------|--------------------------------------------|--------------------------------------------|------------------------------------------------------------------------------------------------------------|
| **Technology**                | [Apache SkyWalking](https://skywalking.apache.org/) | [Cloud Debugger](https://cloud.google.com/debugger) | :fontawesome-regular-circle-question:      | :fontawesome-regular-circle-question:      | :fontawesome-regular-circle-question:      | Live-Coding Platform, Developer-Native Observability Platform, Dynamic Observability, Production Debugging |
| Open-source                   | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-minus:{ .red }            | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }   |                                                                                                            |
| Multi-tenant                  | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } |                                                                                                            |
| Tenant labels                 | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } | Label your environments                                                                                    |
| Multi-instance                | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | Application instance                                                                                       |
| Instance labels               | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } | Tag your agents                                                                                            |
| Collaborative debugging       | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } |                                                                                                            |
| Autonomous debugging          | :fontawesome-solid-circle-minus:{ .red }            | :fontawesome-solid-circle-minus:{ .red }            | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } | Auto-debug                                                                                                 |
| Time travel debugging         | :fontawesome-solid-circle-minus:{ .red }            | :fontawesome-solid-circle-minus:{ .red }            | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   |                                                                                                            |
| Pipeline integrations         | :fontawesome-solid-circle-minus:{ .red }            | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   |                                                                                                            |
| Exception collection/alerting | :fontawesome-solid-circle-minus:{ .red }            | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } |                                                                                                            |
| Auditing system               | :fontawesome-solid-circle-minus:{ .red }            | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green } | :fontawesome-regular-circle-question:      | :fontawesome-regular-circle-question:      |                                                                                                            |
| PII redaction                 | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green }          | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } |                                                                                                            |
| Supported libraries           | 100+                                                | ~10                                                 | 0                                          | ~14                                        | 0                                          | Auto-link, supported middleware/frameworks, automated instrumentation                                      |

### Deployment

|             | [Source++](https://sourceplus.plus)        | [Lightrun](https://lightrun.com)           | [Rookout](https://rookout.com)             | [Thundra](https://thundra.io)              | [nerd.vision](https://nerd.vision)         | Terminology |
|-------------|--------------------------------------------|--------------------------------------------|--------------------------------------------|--------------------------------------------|--------------------------------------------|-------------|
| Cloud       | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } |             |
| Self-hosted | :fontawesome-solid-circle-check:{ .green } | :mobile_phone:                             | :mobile_phone:                             | :fontawesome-solid-circle-minus:{ .red }   | :mobile_phone:                             |             |

### Clients

|                        | [Source++](https://sourceplus.plus)        | [Lightrun](https://lightrun.com)           | [Rookout](https://rookout.com)           | [Thundra](https://thundra.io)              | [nerd.vision](https://nerd.vision)         | Terminology |
|------------------------|--------------------------------------------|--------------------------------------------|------------------------------------------|--------------------------------------------|--------------------------------------------|-------------|
| JetBrains              | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } |             |
| Visual Studio Code     | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   |             |
| Command-line interface | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }   |             |

## Features

### Live Instruments

> Allow developers to debug live production applications inside their IDE without redeploying/restarting the application.<br>More Info: [Live Instruments](../features/live-instruments)

|                             | [Source++](https://sourceplus.plus)        | [Lightrun](https://lightrun.com)           | [Rookout](https://rookout.com)                        | [Thundra](https://thundra.io)              | [nerd.vision](https://nerd.vision)                 | Terminology                                                            |
|-----------------------------|--------------------------------------------|--------------------------------------------|-------------------------------------------------------|--------------------------------------------|----------------------------------------------------|------------------------------------------------------------------------|
| **Supported Languages**     | Java, Groovy, Kotlin, Python               | Java, Python, Node.js                      | Java, Groovy, Kotlin, Python, Go, Node.js, .NET, Ruby | Java, Python, Node.js                      | Java, Groovy, Kotlin, Scala, Python, Node.js, .NET |                                                                        |
| Live breakpoint             | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }            | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }         | Non-breaking breakpoint, tracepoint, snapshot, single frame tracepoint |
| Live log                    | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }            | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green }         | Logpoint, JIT logging, dynamic logs                                    |
| Live metric                 | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }            | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }           | Custom metrics, counters                                               |
| Live span                   | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }              | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }           | Manual instrumentation                                                 |
| Multi-layer instrument      | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }            | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }           | Snapshot, full stack tracepoint                                        |
| Instrument conditional      | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }            | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }         |                                                                        |
| Instrument write protection | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }              | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red }           | Patent-pending sandbox                                                 |
| Instrument TTL              | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }            | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }         | Time to live                                                           |
| Source code blacklisting    | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }            | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green }         | Hiding sensitive data, blocklist                                       |

### Live Views

> Offer developers production operational metrics inside their IDE contextualized to the underlying source code.<br>More Info: [Live Views](../features/live-views)

|                   | [Source++](https://sourceplus.plus)        | [Lightrun](https://lightrun.com)           | [Rookout](https://rookout.com)           | [Thundra](https://thundra.io)            | [nerd.vision](https://nerd.vision)       | Terminology            |
|-------------------|--------------------------------------------|--------------------------------------------|------------------------------------------|------------------------------------------|------------------------------------------|------------------------|
| Status Portals    | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | IDE production charts  |
| Status Indicators | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | Production inlay hints |

### Live Dashboards

> Traditional APM web dashboards for software operators

|                        | [Source++](https://sourceplus.plus)      | [Lightrun](https://lightrun.com)         | [Rookout](https://rookout.com)           | [Thundra](https://thundra.io)              | [nerd.vision](https://nerd.vision)       | Terminology |
|------------------------|------------------------------------------|------------------------------------------|------------------------------------------|--------------------------------------------|------------------------------------------|-------------|
| Web charts             | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-check:{ .green } | :fontawesome-solid-circle-minus:{ .red } |             |
| KPI metrics            | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red } |             |
| Custom metric analysis | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red } | :fontawesome-solid-circle-minus:{ .red }   | :fontawesome-solid-circle-minus:{ .red } |             |

#### Disclaimer

The comparison matrix is a guide only and should not be used to determine the suitability of any software for any particular use. If you would like to improve the accuracy of the comparison matrix, please [submit a pull request](https://github.com/sourceplusplus/documentation/pulls) or [open an issue](https://github.com/sourceplusplus/documentation/issues).


[//]: # (https://squidfunk.github.io/mkdocs-material/alternatives/)

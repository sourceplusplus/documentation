# Configuration

## Default configuration

```yaml
spp-platform:
  host: ${SPP_PLATFORM_HOST:-0.0.0.0}
  port: ${SPP_PLATFORM_PORT:-5445}
  access_token: ${SPP_SYSTEM_ACCESS_TOKEN:-change-me}
  logging:
    level: ${SPP_LOGGING_LEVEL:-info}
  probe:
    bridge_port: ${SPP_PROBE_BRIDGE_PORT:-5450}
  marker:
    bridge_port: ${SPP_MARKER_BRIDGE_PORT:-5455}
  processor:
    bridge_port: ${SPP_PROCESSOR_BRIDGE_PORT:-5460}
    live-instrument:
      enabled: ${SPP_PROCESSOR_LIVE_INSTRUMENT_ENABLED:-true}
    live-view:
      enabled: ${SPP_PROCESSOR_LIVE_VIEW_ENABLED:-true}

storage:
  selector: ${SPP_STORAGE:-memory}
  redis:
    host: ${SPP_REDIS_HOST:-localhost}
    port: ${SPP_REDIS_PORT:-6379}

skywalking-oap:
  host: ${SPP_OAP_HOST:-localhost}
  port: ${SPP_OAP_PORT:-12800}
```

## Configuration options

| Option                                             | Default   | Description                                            |
|:---------------------------------------------------|-----------|:-------------------------------------------------------|
| **spp-platform:host**                              | 0.0.0.0   | Platform host to listen on                             |
| **spp-platform:port**                              | 5445      | Platform port to listen on                             |
| **spp-platform:access_token**                      | change-me | System access token                                    |
| **spp-platform:logging:level**                     | info      | Platform logging level                                 |
| **spp-platform:probe:bridge_port**                 | 5450      | Port to listen on for Source++ Probe connections       |
| **spp-platform:plugin:bridge_port**                | 5455      | Port to listen on for Source++ Plugin connections      |
| **spp-platform:processor:bridge_port**             | 5460      | Port to listen on for SkyWalking processor connections |
| **spp-platform:processor:live-instrument:enabled** | true      | Whether to enabled Live Instrument processor           |
| **spp-platform:processor:live-view:enabled**       | true      | Whether to enabled Live View processor                 |
| **storage:selector**                               | memory    | Where live data is saved                               |
| **storage:redis:host**                             | localhost | Host to connect to Redis                               |
| **storage:redis:port**                             | 6379      | Port to connect to Redis                               |
| **skywalking-oap:host**                            | localhost | Host to connect to SkyWalking                          |
| **skywalking-oap:port**                            | 12800     | Port to connect to SkyWalking                          |
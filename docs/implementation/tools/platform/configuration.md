# Configuration

## Default configuration

```yaml
spp-platform:
  host: 0.0.0.0
  port: 443
  logging:
    level: info
  probe:
    bridge_port: 5450
  plugin:
    bridge_port: 5455
  processor:
    bridge_port: 5460

redis:
  host: localhost
  port: 6379

skywalking-oap:
  host: localhost
  port: 12800
```

## Configuration options

| Option                                 | Default              | Description                                                                        |
| :------------------------------------- | -------------------- | :--------------------------------------------------------------------------------- |
| **spp-platform:host**                  | 0.0.0.0              | Platform host to listen on                                                         |
| **spp-platform:port**                  | 443                  | Platform port to listen on                                                         |
| **spp-platform:logging:level**         | info                 | Platform logging level                                                             |
| **spp-platform:probe:bridge_port**     | 5450                 | Port to listen on for Source++ Probe connections                                   |
| **spp-platform:plugin:bridge_port**    | 5455                 | Port to listen on for Source++ Plugin connections                                  |
| **spp-platform:processor:bridge_port** | 5460                 | Port to listen on for SkyWalking processor connections                             |
| **redis:host**                         | localhost            | Host to connect to Redis                                                           |
| **redis:port**                         | 6379                 | Port to connect to Redis                                                           |
| **skywalking-oap:host**                | localhost            | Host to connect to SkyWalking                                                      |
| **skywalking-oap:port**                | 12800                | Port to connect to SkyWalking                                                      |
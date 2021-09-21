# Configuration

## Default configuration

```yaml
spp:
  platform_host: "<company-name>.srcpl.us"
  platform_port: 443
  platform_certificate: "<platform-certificate>"
skywalking:
  logging:
    level: "WARN"
  agent:
    service_name: "<company-name>"
    is_cache_enhanced_class: true
    class_cache_mode: "FILE"
  collector:
    backend_service: "<company-name>.srcpl.us:11800"
```

!!! note
    The Source++ JVM probe is powered by Apache SkyWalking. The configuration given above represents the default
    configuration. For additional configuration, refer to [Agent Configuration Properties](https://skywalking.apache.org/docs/main/v8.5.0/en/setup/service-agent/java-agent/readme/#table-of-agent-configuration-properties){target=_blank}.

## Probe options

| Option                                 | Default              | Description                                                                        |
| :------------------------------------- | -------------------- | :--------------------------------------------------------------------------------- |
| **spp:platform_host**                  | *GENERATED*          | Platform host to connect to                                                        |
| **spp:platform_port**                  | 443                  | Platform port to connect to                                                        |
| **spp:platform_certificate**           | *GENERATED*          | Public key for connecting to the platform                                          |

## SkyWalking options

| Option                                           | Default              | Description                                                                        |
| :----------------------------------------------- | -------------------- | :--------------------------------------------------------------------------------- |
| **skywalking:logging:level**                     | *GENERATED*          | SkyWalking agent logging level                                                     |
| **skywalking:agent:service_name**                | *GENERATED*          | SkyWalking agent service name                                                      |
| **skywalking:agent:is_cache_enhanced_class**     | true                 | Required to add additional class transformers                                      |
| **skywalking:agent:class_cache_mode**            | FILE                 | Used to cache enhanced classes to FILE or MEMORY                                   |
| **skywalking:collector:backend_service**         | *GENERATED*          | SkyWalking backend host to connect to                                              |

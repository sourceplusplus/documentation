# Configuration

## Default configuration

```yaml
spp:
  platform_host: "<company-name>.srcpl.us"
  platform_port: 443
  platform_certificate: "<platform-certificate>"
skywalking:
  agent:
    service_name: "<company-name>"
```

!!! note
    The Source++ JVM probe is powered by Apache SkyWalking. The configuration given above represents the default
    configuration. For additional configuration, refer to [Agent Configuration Properties](https://skywalking.apache.org/docs/skywalking-java/latest/en/setup/service-agent/java-agent/configurations/){target=_blank}.

## Probe options

| Option                       | Default | Description                               |
|:-----------------------------|---------|:------------------------------------------|
| **spp:platform_host**        |         | Platform host to connect to               |
| **spp:platform_port**        |         | Platform port to connect to               |
| **spp:platform_certificate** |         | Public key for connecting to the platform |

## SkyWalking options

| Option                                               | Default | Description                                      |
|:-----------------------------------------------------|---------|:-------------------------------------------------|
| **skywalking:agent:service_name**                    |         | SkyWalking agent service name                    |
| **skywalking:agent:is_cache_enhanced_class**         | true    | Required to add additional class transformers    |
| **skywalking:agent:class_cache_mode**                | FILE    | Used to cache enhanced classes to FILE or MEMORY |
| **skywalking:collector:backend_service**             |         | SkyWalking backend host to connect to            |
| **skywalking:plugin:toolkit:log:transmit_formatted** | false   | Whether to send logs as template and arguments   |

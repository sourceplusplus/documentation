# Configuration

## Default configuration

```yaml
spp-platform:
  host: ${SPP_PLATFORM_HOST:-0.0.0.0}
  http:
    port: ${SPP_HTTP_PORT:-443}
    ssl_enabled: ${SPP_HTTP_SSL_ENABLED:-true}
    redirect_to_https: ${SPP_HTTP_REDIRECT_TO_HTTPS:-true}
  grpc:
    port: ${SPP_GRPC_PORT:-11800}
    ssl_enabled: ${SPP_GRPC_SSL_ENABLED:-true}
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
  pii-redaction:
    enabled: ${SPP_PII_REDACTION_ENABLED:-true}
    redactions:
      - id: "phone_redaction"
        type: "VALUE_REGEX"
        lookup: '\b(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}\b'
        replacement: "<Phone Number>"
      - id: "ssn_redaction"
        type: "VALUE_REGEX"
        lookup: '\b\d{3}[- ]?\d{2}[- ]?\d{4}\b'
        replacement: "<SSN>"
      - id: "email_redaction"
        type: "VALUE_REGEX"
        lookup: '\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b'
        replacement: "<Email>"
      - id: "ip_redaction"
        type: "VALUE_REGEX"
        lookup: '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b'
        replacement: "<IP>"
      - id: "url_redaction"
        type: "VALUE_REGEX"
        lookup: '\b?^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]\b?'
        replacement: "<URL>"
      - id: "credit_card_redaction"
        type: "VALUE_REGEX"
        lookup: '\b\d{4}[- ]?\d{4}[- ]?\d{4}[- ]?\d{4}\b'
        replacement: "<Credit Card>"
      - id: "bank_account_redaction"
        type: "VALUE_REGEX"
        lookup: '\b\d{4}[- ]?\d{4}[- ]?\d{4}[- ]?\d{4}\b'
        replacement: "<Bank Account>"
      - id: "zip_code_redaction"
        type: "VALUE_REGEX"
        lookup: '\b\d{5}[- ]?\d{4}\b'
        replacement: "<Zip Code>"

storage:
  selector: ${SPP_STORAGE:-memory}
  redis:
    host: ${SPP_REDIS_HOST:-localhost}
    port: ${SPP_REDIS_PORT:-6379}

skywalking-oap:
  host: ${SPP_OAP_HOST:-localhost}
  rest_port: ${SPP_OAP_REST_PORT:-12800}
  grpc_port: ${SPP_OAP_GRPC_PORT:-11800}
```

## Configuration options

| Option                                             | Default   | Description                                            |
|:---------------------------------------------------|-----------|:-------------------------------------------------------|
| **spp-platform:host**                              | 0.0.0.0   | Platform host to listen on                             |
| **spp-platform:port**                              | 12800     | Platform port to listen on                             |
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
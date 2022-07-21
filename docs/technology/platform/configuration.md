# Configuration

## Default configuration

```yaml
spp-platform:
  host: ${SPP_PLATFORM_HOST:-0.0.0.0}
  jwt:
    enabled: ${SPP_JWT_ENABLED:-true}
    access_token: ${SPP_JWT_ACCESS_TOKEN:-change-me}
  http:
    port: ${SPP_HTTP_PORT:-12800,443}
    ssl_enabled: ${SPP_HTTP_SSL_ENABLED:-true}
    redirect_to_https: ${SPP_HTTP_REDIRECT_TO_HTTPS:-true}
  grpc:
    port: ${SPP_GRPC_PORT:-11800}
    ssl_enabled: ${SPP_GRPC_SSL_ENABLED:-true}
  logging:
    level: ${SPP_LOGGING_LEVEL:-info}
  probe:
    bridge_port: ${SPP_PROBE_BRIDGE_PORT:-5450}
  marker:
    bridge_port: ${SPP_MARKER_BRIDGE_PORT:-5455}
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
    host: ${SPP_STORAGE_HOST:-localhost}
    port: ${SPP_STORAGE_PORT:-6379}

skywalking-oap:
  host: ${SPP_OAP_HOST:-localhost}
  rest_port: ${SW_CORE_REST_PORT:-12801}
  grpc_port: ${SW_CORE_GRPC_PORT:-11801}
```

## Configuration options

| Option                                  | Default   | Description                                                      |
|:----------------------------------------|-----------|:-----------------------------------------------------------------|
| **spp-platform:host**                   | 0.0.0.0   | Platform host to listen on                                       |
| **spp-platform:jwt:enabled**            | true      | Whether or not to enabled jwt access                             |
| **spp-platform:jwt:access_token**       | change-me | System access token                                              |
| **spp-platform:http:port**              | 12800     | Port to listen on for http connections                           |
| **spp-platform:http:ssl_enabled**       | true      | Whether or not to use SSL on http(s) connections                 |
| **spp-platform:http:redirect_to_https** | true      | Whether or not redirect http connections to https                |
| **spp-platform:grpc:port**              | 11800     | Port to listen on for GRPC connections                           |
| **spp-platform:grpc:ssl_enabled**       | 11800     | Whether or not to use SSL on GRPC connections                    |
| **spp-platform:logging:level**          | info      | Platform logging level                                           |
| **spp-platform:probe:bridge_port**      | 5450      | Port to listen on for Source++ Probe connections                 |
| **spp-platform:marker:bridge_port**     | 5455      | Port to listen on for Source++ Marker connections (e.g. Plugins) |
| **storage:selector**                    | memory    | Where live data is saved                                         |
| **storage:redis:host**                  | localhost | Host to connect to Redis                                         |
| **storage:redis:port**                  | 6379      | Port to connect to Redis                                         |
| **skywalking-oap:host**                 | localhost | Host to connect to SkyWalking                                    |
| **skywalking-oap:rest_port**            | 12801     | Port to connect to SkyWalking REST API                           |
| **skywalking-oap:grpc_port**            | 11801     | Port to connect to SkyWalking GRPC                               |

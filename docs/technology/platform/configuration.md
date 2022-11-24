# Configuration

## Default configuration

```yaml
spp-platform:
  host: ${SPP_PLATFORM_HOST:-0.0.0.0}
  jwt:
    enabled: ${SPP_JWT_ENABLED:-false}
    access_token: ${SPP_JWT_ACCESS_TOKEN:-change-me}
  http:
    port: ${SPP_HTTP_PORT:-12800}
    ssl_enabled: ${SPP_HTTP_SSL_ENABLED:-false}
    ssl_cert: ${SPP_HTTP_SSL_CERT:-}
    ssl_key: ${SPP_HTTP_SSL_KEY:-}
    redirect_to_https: ${SPP_HTTP_REDIRECT_TO_HTTPS:-false}
  logging:
    level: ${SPP_LOGGING_LEVEL:-info}
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

client-access:
  enabled: ${SPP_CLIENT_ACCESS_ENABLED:-false}
  accessors:
    - id: ${SPP_CLIENT_ACCESS_ID:-}
      secret: ${SPP_CLIENT_ACCESS_SECRET:-}

storage:
  selector: ${SPP_STORAGE:-memory}
  redis:
    host: ${SPP_STORAGE_HOST:-localhost}
    port: ${SPP_STORAGE_PORT:-6379}
    cluster:
      enabled: ${SPP_STORAGE_CLUSTER_ENABLED:-false}

skywalking-core:
  host: ${SW_CORE_HOST:-localhost}
  rest_port: ${SW_CORE_REST_PORT:-12801}
  grpc:
    port: ${SW_CORE_GRPC_PORT:-11800}
    ssl_enabled: ${SW_CORE_GRPC_SSL_ENABLED:-false}
    ssl_key_path: ${SW_CORE_GRPC_SSL_KEY_PATH:-}
    ssl_cert_chain_path: ${SW_CORE_GRPC_SSL_CERT_CHAIN_PATH:-}
    ssl_trusted_ca_path: ${SW_CORE_GRPC_SSL_TRUSTED_CA_PATH:-}
```

## Configuration options

| Option                                       | Default   | Description                                       |
|:---------------------------------------------|-----------|:--------------------------------------------------|
| **spp-platform:host**                        | 0.0.0.0   | Platform host to listen on                        |
| **spp-platform:jwt:enabled**                 | true      | Whether or not to enabled jwt access              |
| **spp-platform:jwt:access_token**            | change-me | System access token                               |
| **spp-platform:http:port**                   | 12800     | Port to listen on for http connections            |
| **spp-platform:http:ssl_enabled**            | false     | Whether or not to use SSL on http(s) connections  |
| **spp-platform:http:ssl_cert**               |           | SSL certificate file path                         |
| **spp-platform:http:ssl_key**                |           | SSL key file path                                 |
| **spp-platform:http:redirect_to_https**      | false     | Whether or not redirect http connections to https |
| **spp-platform:logging:level**               | info      | Platform logging level                            |
| **spp-platform:pii-redaction:enabled**       | true      | Whether or not to enable PII redaction            |
| **spp-platform:client-access:enabled**       | false     | Whether or not to enable client access            |
| **spp-platform:client-access:accessors**     |           | List of client accessors                          |
| **storage:selector**                         | memory    | Where live data is saved                          |
| **storage:redis:host**                       | localhost | Host to connect to Redis                          |
| **storage:redis:port**                       | 6379      | Port to connect to Redis                          |
| **storage:redis:cluster:enabled**            | false     | Whether or not to use clustering                  |
| **skywalking-core:host**                     | localhost | Host to connect to SkyWalking                     |
| **skywalking-core:rest_port**                | 12801     | Port to connect to SkyWalking REST API            |
| **skywalking-core:grpc:port**                | 11800     | Port to connect to SkyWalking gRPC API            |
| **skywalking-core:grpc:ssl_enabled**         | false     | Whether or not to use SSL on gRPC connections     |
| **skywalking-core:grpc:ssl_key_path**        |           | SSL key file path                                 |
| **skywalking-core:grpc:ssl_cert_chain_path** |           | SSL certificate file path                         |
| **skywalking-core:grpc:ssl_trusted_ca_path** |           | SSL trusted CA file path                          |

# Unreleased

### Ecosystem

#### Added
- Live Dashboard

### [JetBrains Plugin](https://github.com/sourceplusplus/interface-jetbrains)

### Added
- Support for multilingual projects
- Python Flask endpoint detection

### Changed
- Improved dynamic plugin loading

#### Fixed
- Action conflicts with LivePlugin
- Portal connection configuration
- Ignore un-parsable `spp-plugin.yml` files

### [JVM Probe](https://github.com/sourceplusplus/probe-jvm)

### Added
- Automatically create ca/ca.crt if not present

#### Changed
- Upgraded SkyWalking agent to 8.11.0

### [Live Platform](https://github.com/sourceplusplus/live-platform)

#### Added
- SkyWalking gRPC proxy
- `spp-platform.jwt.enabled` configuration option
- `spp-platform.jwt.access_token` configuration option
- `spp-platform.http.port` configuration option
- `spp-platform.http.ssl_enabled` configuration option
- `spp-platform.http.redirect_to_https` configuration option
- `spp-platform.grpc.port` configuration option
- `spp-platform.grpc.ssl_enabled` configuration option
- `skywalking-oap.grpc_port` configuration option

#### Changed
- Configuration option from `skywalking-oap.port` to `skywalking-oap.rest_port`
- Environment configuration option from `SPP_SYSTEM_ACCESS_TOKEN` to `SPP_JWT_ACCESS_TOKEN`

#### Fixed
- JVM probe generator

#### Removed
- Documentation submodule

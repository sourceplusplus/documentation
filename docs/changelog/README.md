# Unreleased

### [JetBrains Plugin](https://github.com/sourceplusplus/interface-jetbrains)

#### Added
- Portal preloading
- Source guide marks
- Ability to override plugin settings via `.spp/spp-plugin.yml` file
- Auto-connect to local default SkyWalking OAP server
- Failing endpoint indicator

#### Changed
- `spp-skywalking-reroute` header is now `spp-skywalking-reroute-header`
- SkyWalking OAP 9.0.0 compatibility 
- Increased portal loading speed

#### Fixed
- Plugin settings modification check

### [JVM Probe](https://github.com/sourceplusplus/probe-jvm)

#### Changed
- Upgraded SkyWalking agent to 8.10.0

### [Live Portal](https://github.com/sourceplusplus/interface-portal)

#### Changed
- Single page portal support

### [Live View Processor](https://github.com/sourceplusplus/processor-live-view)

#### Added
- Ability to subscribe to endpoint events by id

### [Live Platform](https://github.com/sourceplusplus/live-platform)

#### Added
- PII redaction capabilities
- `/graphql/spp` endpoint

#### Changed
- Upgraded SkyWalking OAP to 9.0.0
- Changed default graphql portal from `5445` to `12800`
- `spp-skywalking-reroute` header removed for `spp-platform-request` header

### [Live Protocol](https://github.com/sourceplusplus/protocol)

#### Added
- Added `endpoint_resp_time` metric to MetricType

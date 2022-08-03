# Unreleased

### Ecosystem

#### Changed
- Consolidated subproject issues to sourceplusplus/live-platform
- Updated subproject licenses to Apache 2.0

### [JetBrains Plugin](https://github.com/sourceplusplus/interface-jetbrains)

#### Fixed
- Attempted duplicate abstract class definition error in live plugins
- Service timeout error on no service response

### [Live Platform](https://github.com/sourceplusplus/live-platform)

#### Added
- Live management service
- Probe authentication
- `/download/spp-probe.yml` route
- Service health checks to `/health` endpoint

#### Changed
- route `/download/spp-probe` to `/download/jvm-probe.jar`

#### Fixed
- Probe/marker counters in `/stats` not decreasing

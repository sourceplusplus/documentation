# Unreleased

### [JetBrains Plugin](https://github.com/sourceplusplus/interface-jetbrains)

#### Added
- Support multiple projects simultaneously

#### Fixed
- Plugin silently uses port 5455

### [JVM Probe](https://github.com/sourceplusplus/probe-jvm)

#### Fixed
- Skip reloading configuration after already loaded

### [Live Platform](https://github.com/sourceplusplus/live-platform)

#### Changed
- Merged marker & probe bridge ports into HTTP port(s)

#### Fixed
- Cloning live-platform triggers makeDist error

#### Removed
- `spp-platform.probe.bridge_port` configuration option
- `spp-platform.marker.bridge_port` configuration option

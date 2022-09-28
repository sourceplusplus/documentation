# Unreleased

### [Live CLI](https://github.com/sourceplusplus/interface-cli)

#### Added


#### Changed


### [Live Platform](https://github.com/sourceplusplus/sourceplusplus)

#### Added


#### Changed


#### Fixed


### [Live Protocol](https://github.com/sourceplusplus/protocol)

### Added
- Concrete typed convenience methods to LiveInstrumentService
- `meterDescription` to LiveMeter

#### Changed
- Switched from multiplatform build to JVM-only build
- LiveManagementService.updateClientAccess -> LiveManagementService.refreshClientAccess
- LiveViewSubscription -> LiveView
- ActiveInstance -> InstanceConnection

#### Removed
- `meterName` from LiveMeter

### [JetBrains Plugin](https://github.com/sourceplusplus/interface-jetbrains)

#### Added
- Basic support for JavaScript-based source code
- Info bar footer to command palette
- Tooltips to live indicator gutter icons
- Ability to add custom tooltips to guide marks
- `Tail Logs` command
- `Boot Time` command
- `Library Check` command
- `Show/Hide Meters` command
- `High Load Endpoint` indicator

#### Changed
- `Quick Stats` indicator now uses realtime metrics
- UI theming improvements

#### Fixed
- Adding live instruments to inner classes
- Auto-complete variable names on tab key

#### Removed
- Root source package configuration


### [JVM Probe](https://github.com/sourceplusplus/probe-jvm)

#### Added
- Better support for custom classloaders

#### Changed
- Upgraded SkyWalking agent to 8.12.0
- SSL disabled by default
- Automatically write `ca.crt` if necessary, delete if not
- `meta.language` changed from `java` to `jvm`

#### Fixed
- Java early access versions not being detected

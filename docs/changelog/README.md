# Unreleased

### [JVM Probe](https://github.com/sourceplusplus/probe-jvm)

#### Added
- Support for lambda instrument locations
- Report live variable line numbers
- `ObjectLifespanMonitor` for tracking object lifespans
- `spp.transformed_dump_directory` configuration option

#### Changed
- Ignore Groovy internal live variables
- Upgraded SkyWalking agent to 8.14.0

#### Fixed
- Live variable scoping issue
- Java 8 compatibility issue

### [Live Platform](https://github.com/sourceplusplus/sourceplusplus)

#### Added
- Additional functionality in `LiveManagementServiceImpl` for managing platform
- `LiveViewService.getTraceStack` implementation
- `spp-platform.instruments` configuration option
- `spp-platform.roles.redactions` configuration option
- Instrument/view-specific subscription listening
- Instrument/view developer-wide subscription listening
- Live variable data redactions

#### Changed
- Ability to create live instrument with custom id via GraphQL
- Ability to create developers with custom access token via GraphQL

#### Fixed
- Live variable ordering
- Persist instrument updates on hits

### [Live Protocol](https://github.com/sourceplusplus/protocol)

#### Added
- Define additional functionality in `LiveManagementService` for managing platform
- `LocationScope` enum for lambda instrument locations
- `LiveViewService.getTraceStack`

#### Changed
- Restructured `LiveInstrumentEvent` implementations
- Added `LiveSourceLocation.scope` field
- Added `OBJECT_LIFESPAN` value to `MetricValueType` enum

### [JetBrains Plugin](https://github.com/sourceplusplus/interface-jetbrains)

#### Added
- Native live instrument events UI
- Static DFA multi-path pass
- Random conditional artifact pass
- Java counting loop detection pass for path duration calculation
- Ability to view instrument events by other developers

#### Changed
- Improved native live view charts
- Co-developer instrument gutter marks
- Use native condition field for breakpoint control bar
- Only load project live plugins if project is trusted
- show indicators on SpringMVC endpoints on annotation

#### Fixed
- Live log variables not working in Kotlin
- Groovy compatability issues
- NPE when not logged in

#### Removed
- Live breakpoint status bar

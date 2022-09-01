# Unreleased

### [Live CLI](https://github.com/sourceplusplus/interface-cli)

#### Added
- Client access commands

#### Changed
- Increased verbose output

#### Removed
- Moved .graphql schema files from CLI to protocol

### [Live Platform](https://github.com/sourceplusplus/live-platform)

#### Added
- Protection against potential timing attack in memory storage access tokens and client secrets
- Handle circular references in live variables

#### Changed
- Increased logging

#### Fixed
- Non-existing data redaction error

### [Live Protocol](https://github.com/sourceplusplus/protocol)

#### Added
- Moved .graphql schema files from CLI to protocol

### [JetBrains Plugin](https://github.com/sourceplusplus/interface-jetbrains)

#### Added
- Unused endpoint indicator

#### Changed
- Unauthorized live commands are now disabled
- Live instruments disabled inside endless loops

#### Fixed
- Capture unhandled coroutine exceptions
- Live variable circular reference display
- Concurrent live plugin loading issue
- Access is allowed from write thread only error
- Read access is allowed from inside read-action error

### [JVM Probe](https://github.com/sourceplusplus/probe-jvm)

#### Added
- Max collection size limits for live variables

#### Changed
- Increased logging
- Increased support for null live variables

The Source++ Platform is the backbone of the Source++ system. It serves as the gateway for both probes and clients and
handles authentication and authorization.

Observability platform. Probes and plugins/CLIs connect to the platform.

Typical process is something like:

- User creates breakpoint via plugin/CLI
- Request is sent to platform
- Platform validates request and forwards to probe
- Probe modifies runtime bytecode to capture software data
- Software runtime data is sent back to platform
- Platform performs analysis and sanitizes PII on runtime data
- Runtime data is sent back to user via plugin/CLI

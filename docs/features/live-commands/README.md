# Overview

**Live Commands** offer the ability for developers to programmatically add custom functionality to their IDE with little effort. Including custom keyboard shortcuts, actions, dialogs, notifications, inlays, and more. Thereby giving developers a powerful way to tailor their IDE to the specific needs of their team and personal preferences.

### Live Command Palette

The Live Command Palette (LCP) is a programmable contextual command prompt, included in the [JetBrains Plugin](../../technology/clients/jetbrains-plugin.md), that allows developers to control and query live applications from their IDE. Opened via keyboard shortcut (++ctrl+shift+s++), the LCP allows developers to easily view metrics relevant to the source code they're currently viewing.

### Bundled Commands

The following commands are pre-defined in the Live Command Palette:

- General
    - [New Command](./bundled/new-command.md)
- Live Instrument
    - [Add Breakpoint](./bundled/add-breakpoint.md)
    - [Add Log](./bundled/add-log.md)
    - [Add Meter](./bundled/add-meter.md)
    - [Add Span](./bundled/add-span.md)
    - [Clear Instruments](./bundled/clear-instruments.md)
- Live View
    - [View Activity](./bundled/view-activity.md)
    - [View Logs](./bundled/view-logs.md)
    - [View Traces](./bundled/view-traces.md)

Adding new commands is accomplished by adding files to the `.spp\commands` directory in the project root. You can use the `new-command` command to create a new command template. For more information, see the [New Command](../defined/new-command.md) command.

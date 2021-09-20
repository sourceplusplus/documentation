# JetBrains Plugin

Is an IDE plugin. Developers install to IDE and configures the plugin to connect to the platform.

## Requirements

- [JetBrains IDE](https://www.jetbrains.com)
    - IntelliJ IDEA Community — 2020.2 — 2020.3
    - IntelliJ IDEA Educational — 2020.2 — 2020.2.4
    - IntelliJ IDEA Ultimate — 2020.2 — 2020.3
    - Android Studio — 202.4357 — 203.*
  
## Installation

Use the built-in plugin system at:

<kbd>Preferences</kbd> > <kbd>Plugins</kbd> > <kbd>Marketplace</kbd> > <kbd>Search for "Source++"</kbd> > <kbd>Install Plugin</kbd>

## Configuration

The configuration settings can be found at: <kbd>File</kbd> > <kbd>Settings</kbd> > <kbd>Tools</kbd> > <kbd>Source++</kbd>

!![](../../../assets/screenshots/settings_dialog.png)

### Service Settings

| Option                                 | Default              | Description                                                                        |
| :------------------------------------- | -------------------- | :--------------------------------------------------------------------------------- |
| **Host**                               |                      | Platform host to connect to                                                        |
| **Access Token**                       |                      | Platform port to connect to                                                        |
| **Certificate Pins**                   |                      | Used only for self-hosted platforms using self-signed certificates                 |

### Plugin Settings

| Option                                 | Default              | Description                                                                        |
| :------------------------------------- | -------------------- | :--------------------------------------------------------------------------------- |
| **Root Source Package**                | *\*GENERATED*\*      | Base source code package (e.g. `com.example`)                                      |
| **Debug Console Enabled**              | false                | Additional console for plugin debug logs                                           |
| **Auto-Resolve Endpoint Names**        | true                 | Automatically resolve endpoint names                                               |
| **Refresh Interval (ms)**              | 500                  | Refresh interval for portal UI                                                     |

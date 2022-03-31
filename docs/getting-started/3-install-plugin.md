# Setup Plugin

## Download Plugin

With Source++, you can add live instruments (breakpoints, logs, etc.) from the source code of your live application either from your IDE, or from the CLI. To use Source++ through your IDE, you need to first install the [Source++ Plugin](../implementation/tools/clients/jetbrains-plugin.md).

!!! note
    The Source++ Plugin currently only supports [JetBrains](https://www.jetbrains.com/) IDEs.

### Installing Source++ Plugin

1. Navigate to your JetBrains IDE.
1. Press ++ctrl+alt+s++ to open the `Settings` dialog and then go to `Plugins`.
1. Open the `Marketplace` tab.
1. Search for `Source++`.
1. Press `Install`.
1. Click `OK` in the `Settings` dialog and restart your IDE.

## Configure Plugin

Before you can work from your IDE with Source++, you need to connect the plugin with your SkyWalking/live-platform environment. To connect your plugin, follow these steps:

1. Open the Source++ plugin configuration page
    1. Navigate to: <kbd>File</kbd> > <kbd>Settings</kbd> > <kbd>Tools</kbd> > <kbd>Source++</kbd>
       !![](../assets/screenshots/settings_dialog.png)
1. Input the service host and access token provided (if necessary)
1. If `Root Source Package` is empty, input the base common package of your application
    1. E.g. `com.company.application`

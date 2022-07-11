# Connect Plugin

!!! note
    The Source++ Plugin currently only supports [JetBrains](https://www.jetbrains.com/) IDEs.

With Source++, you can add live instruments (breakpoints, logs, etc.) from your application's source code either via IDE, CLI, or API. To use Source++ via your IDE, you need to first install the [Source++ Plugin](../technology/clients/jetbrains-plugin.md). The following steps will help you install the plugin.

## Install Plugin

1. Navigate to your JetBrains IDE.
1. Press ++ctrl+alt+s++ to open the `Settings` dialog and then go to `Plugins`.
1. Open the `Marketplace` tab.
1. Search for `Source++`.
1. Press `Install`.
1. Click `OK` in the `Settings` dialog and restart your IDE.

## Configure Plugin

Before you can use Source++ inside your IDE, you will need to connect the plugin to the platform.

To connect your plugin, follow these steps:

1. Open the Source++ plugin configuration page
    1. Navigate to: <kbd>File</kbd> > <kbd>Settings</kbd> > <kbd>Tools</kbd> > <kbd>Source++</kbd>
       !![](../assets/screenshots/settings_dialog.png)
1. Input the service host and access token provided (if necessary)
1. If `Root Source Package` is empty, input the base common package of your application
    1. E.g. `com.company.application`
1. Click `Apply`

---

Now that you have successfully connected your plugin, you can start working from your IDE. Proceed to the next section to learn how to use Source++ from your IDE.

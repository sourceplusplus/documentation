# Install on Windows

Read [Upgrading Source++](upgrading.md) for tips and guidance on updating an existing installation.

## Install standalone Windows binary

1. Click **Download the zip file**.
   **Important:** After you've downloaded the zip file and before extracting it, make sure to open the properties for that file (right-click **Properties**) and select the `unblock` check box and then click `Ok`.

1. Extract this folder to anywhere you want Source++ to run from.

1. Start Source++ by executing `spp-platform.exe`, located in the root directory, preferably from the command line. If you want to run Source++ as a Windows service, then download [NSSM](https://nssm.cc/). It is very easy to add Source++ as a Windows service using that tool.

> **Note:** The default Source++ port is `5445`. This port might require extra permissions on Windows. If it does not appear in the default port, you can try changing to a different port.

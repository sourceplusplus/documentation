# Attach Probe

!!! note
    The Source++ Probe currently support JVM-based applications.

The [Source++ Probe](../implementation/tools/probe/general.md) is the primary tool for how
the [Source++ Platform](../implementation/tools/platform/general.md) collects and displays relevant data for you.

Prerequisites for installing the probe vary depending on the application server you're using. Specific application
servers have their own distinct set of JVM customization arguments. In these cases,
see [Advanced Setup](../advanced/setup/overview.md) for more information. For the typical usage, see below.

## Download

You can use the platform to generate and download a probe which contains embedded connection information.  

```shell
curl -O -J "https://<platform-host>:5445/download/spp-probe?access_token=<access-token>"
```

## Usage

You can attach the probe via the `-javaagent` option. 

```
-javaagent:/<path-to-probe>/spp-probe-0.1.2.jar
```

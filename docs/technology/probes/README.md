# General

The Source++ Probe uses bytecode-manipulations to instantly add the instructions for data
collection to the application's runtime logic. Given the Source++ Platform is secured against accepting observation
data, in order to send data, you must download a dynamically generated probe. This generated probe requires no
configuration and contains all the necessary information to connect to your private platform.

For additional configuration see [Probe Configuration](configuration.md).

## Download

```shell
curl -O -J "https://<spp-platform-host>:spp-platform-port>/download/spp-probe?access_token=<access-token>"
```

!!! note
    You must replace `<spp-platform-host>`, `<spp-platform-port>`, and `<access-token>` with valid values.

## Usage

The Source++ Probe is JVMTI agent and as such must be configured via `-javaagent`. This can typically be done by adding
the below configuration to the `java <exec>` command used to execute your application. The `-javaagent` argument should
be placed before `<exec>`.

For more information on specific app servers, please see [Advanced Setup](../../advanced/setup/overview.md).

### Linux

```
-javaagent:/<path-to-probe>/spp-probe-{{ spp.latest_version }}.jar
```

??? example "Example Usage"
    ```
    java -javaagent:/opt/spp/spp-probe-{{ spp.latest_version }}.jar -jar MyApplication.jar
    ```

### Windows

```
-javaagent:C:\<path-to-probe>\spp-probe-{{ spp.latest_version }}.jar
```

??? example "Example Usage"
    ```
    java -javaagent:C:\SourcePlusPlus\spp-probe-{{ spp.latest_version }}.jar -jar MyApplication.jar
    ```

# Attach Probe

The [Source++ Probe](../technology/probes/README.md) is the primary tool for how the [Source++ Platform](../technology/platform/README.md) collects and displays relevant data for you.

## Download

You can use the platform to generate and serve a probe which contains embedded connection information (including security credentials). Alternatively, you can download the official probe from [GitHub Releases]() and manually configure the necessary connection settings. See [Probe Configuration]() for the required configuration.

The following command will serve the latest probe version:

```shell
curl -O -J https://<platform-host>/download/spp-probe?access_token=<access-token>
```

??? example "Example: Download the latest version"
    ```
    curl -O -J https://localhost:12800/download/spp-probe?access_token=change-me
    ```

To download a specific version, use the following command:

```shell
curl -O -J https://<platform-host>/download/spp-probe?access_token=<access-token>&version=<version>
```

??? example "Example: Download version {{ spp.latest_version }}"
    ```
    curl -O -J https://localhost:12800/download/spp-probe?access_token=change-me&version={{ spp.latest_version }}
    ```

To set the service name, use the following command:

```shell
curl -O -J https://<platform-host>/download/spp-probe?access_token=<access-token>&service_name=<service-name>
```

??? example "Example: Download probe with service name "my-cool-app""
    ```
    curl -O -J https://localhost:12800/download/spp-probe?access_token=change-me&service_name=my-cool-app
    ```

## Usage

Prerequisites for installing the probe vary depending on the application server you're using. For the typical usage, simply add the `-javaagent` option:

```
-javaagent:/<path-to-probe>/spp-probe-{{ spp.latest_version }}.jar
```

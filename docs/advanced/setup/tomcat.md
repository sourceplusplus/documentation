To start using Source++, first add an additional parameter to the `JAVA_OPTS` configuration variable in the WAR file.

### Configure Tomcat for Source++ Probe

1. Copy the following agent path configuration:
```
-agentpath:<install_dir>/spp-probe-0.1.18.jar
```

    2. Insert relevant values for each of the parameters, as follows: - `install_dir` is the path where the probe is saved - `tomcat-path` is the path to the Tomcat project - `app-name.war` is the name of the war file of the project.

2. Paste the agent path as an additional parameter to the JAVA_OPTS variable in your WAR file.

3. Restart the Tomcat server to apply the configuration:
```
./catalina.sh stop
./catalina.sh start
```

!!! note
    - This configuration enables the Source++ Probe to run every time the webserver restarts.

### Linux

- Change the first line of tomcat/bin/catalina.sh.

```
CATALINA_OPTS="$CATALINA_OPTS -javaagent:<install_dir>/spp-probe-0.1.18.jar"; export CATALINA_OPTS
```

### Windows

- Change the first line of tomcat/bin/catalina.bat.

```
set "CATALINA_OPTS=-javaagent:<install_dir>/spp-probe-0.1.18.jar"
```

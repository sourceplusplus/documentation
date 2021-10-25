
## Configure Jetty for Source++

Modify **jetty.sh**, add `-javaagent` argument to command line in which you start your app.

```
export JAVA_OPTIONS="${JAVA_OPTIONS} -javaagent:<intall_dir>/spp-probe-0.1.18.jar"
```

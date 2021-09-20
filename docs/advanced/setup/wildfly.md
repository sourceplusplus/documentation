For a standalone JVM deployment, JVM settings can be added as a JAVA_OPTS variable in the standalone.conf file.

    Copy the agent path, update it according to your configuration and then add it to standalone.conf:

-agentpath:<install_dir>/spp-probe-0.1.0.jar

Tip

    The default server dynamic logs are in /opt/jboss/wildfly/standalone/log/server.log
    To deploy the web interface copy a .war file to the deployment dir /opt/jboss/wildfly/standalone/deployments/
    To redeploy an app, copy a new file to the deployment dir and then run touch <app_name>.war in the same dir. Then see /opt/jboss/wildfly/standalone/log/server.log to verify; the server stops working following these updates.

Restart WildFly - How to start/stop the WildFly server

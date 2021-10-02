# Configure WebLogic for Source++

WebLogic is a Java application server by Oracle. The Enterprise Application (EAR) file contains the WebLogic Server configurations that need to be updated for Source++ integration.

To start using Source++ with a WebLogic server, first add the agent path as an additional JAVA_OPTS parameter in the WebLogic EAR.

#### To configure WebLogic for Source++

Add the parameter with one of the following options:

- from the WebLogic Admin console:

    1. Copy the agent path option.
        ```
       -agentpath:<install_dir>/spp-probe-0.1.3.jar
        ```

    1. Navigate to the Admin panel (usually at [http://localhost:7001/console](https://docs.oracle.com/cd/E13167_01/aldsp/docs21/admin/console.html))

    1. Press **Lock & Edit**.

    1. Go to **(environment) => Servers => (server)**

    1. Go to the Start/Stop tab and update the Arguments with the agent path.

- manually from the WebLogic `sh` file of the EAR

    1. Copy the agent path and update it according to your configuration:
        ```
       -agentpath:<install_dir>/spp-probe-0.1.3.jar
        ```

    1. Add the path to `Oracle/Middleware/user_projects/domains/<your-domain>/bin/setDomainEnv.sh` as an additional parameter to the JAVA_OPTS (see WebLogic documentation for [help](https://docs.oracle.com/cd/E35976_01/general.240/eid_install/src/tidi_studio_weblogic_update_memory_arguments.html)).

!!! note
    This configuration enables the Source++ probe to run every time the webserver restarts.

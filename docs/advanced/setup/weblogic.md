To configure WebLogic for Source++

Add the parameter with one of the following options:

- from the WebLogic Admin console:

  1. Copy the agent path option.
      > -agentpath:<install_dir>/spp-probe-0.1.0.jar

  1. Navigate to the Admin panel (usually at http://localhost:7001/console)

  1. Press Lock & Edit.

  1. Go to (environment) => Servers => (server)

  1. Go to the Start/Stop tab and update the Arguments with the agent path.

- manually from the WebLogic sh file of the EAR file

  1. Copy the agent path and update it according to your configuration:
      > -agentpath:<install_dir>/spp-probe-0.1.0.jar

  1. Add the path to Oracle/Middleware/user_projects/domains/<your-domain>/bin/setDomainEnv.sh as an additional parameter to the JAVA_OPTS (see WebLogic documentation for help)

!!! note
    This configuration enables the Source++ probe to run every time the webserver restarts.

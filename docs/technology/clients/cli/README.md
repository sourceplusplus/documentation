# Basic Usage

## Quick install

### Linux/macOS

Install the latest version with the following command:

```shell
/bin/bash -c "$(curl -fsSL https://raw.sourceplus.plus/interface-cli/master/scripts/install.sh)"
```

### Windows

Note: You will need to start cmd in administrator mode.

```shell
curl -LO "https://raw.sourceplus.plus/interface-cli/master/scripts/install.bat" && .\install.bat
```

## Help

Try executing `spp-cli --help` to output the usage instructions like so:

```
Usage: spp-cli [OPTIONS] COMMAND [ARGS]...

Options:
  -v, --verbose                  Enable verbose mode
  -p, --platform TEXT            Source++ platform host
  -c, --certificate PATH         Source++ platform certificate
  -k, --key PATH                 Source++ platform key
  -a, --authorization-code TEXT  Developer authorization code
  -h, --help                     Show this message and exit

Commands:
  admin      Administrator commands
  developer  Developer commands
  add        Add live instruments/views
  get        Get live instruments/views
  remove     Remove live instruments/views
  subscribe  Subscribe to live instrument/view events
  version    Display version information
```

To get information about a sub-command, try `spp-cli <command> --help`:

```
Usage: spp-cli add [OPTIONS] COMMAND [ARGS]...

  Add live instruments/views

Options:
  -h, --help  Show this message and exit

Commands:
  breakpoint  Add a live breakpoint instrument
  log         Add a live log instrument
  meter       Add a live meter instrument
  span        Add a live span instrument
  view        Add a live view
```

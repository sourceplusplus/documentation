# Install on Debian or Ubuntu

This page explains how to install Source++ dependencies, download and install Source++, get the service up and running on your Debian or Ubuntu system, and also describes the installation package details.

**Note on upgrading:** While the process for upgrading Source++ is very similar to installing Source++, there are some key backup steps you should perform. Read [Upgrading Source++](upgrading.md) for tips and guidance on updating an existing installation.

## 1. Download and install

## Install from binary .tar.gz file

Download the latest [`.tar.gz` file](https://github.com/sourceplusplus/live-platform/releases/latest) and extract it. The files extract into a folder named after the Source++ version downloaded. This folder contains all files required to run the Source++ platform. There are no init scripts or install scripts in this package.

```bash
wget <tar.gz package url>
tar -zxvf <tar.gz package>
```

## 2. Start the server

### Execute the binary

The `spp-platform` binary .tar.gz needs the working directory to be the root install directory where the binary and the `config` folder are located.

Start Source++ by running:

```bash
./spp-platform
```

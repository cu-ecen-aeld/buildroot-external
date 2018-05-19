# Buildroot Base Project Template

This is an example based project template for buildroot.  It uses an br2-external configuration
file storage and the official buildroot repository as a git submodule.  Scripts are provided
to make it easy to perform a build, save configuration, or start the build using qemu.

## Installing Dependencies

Run `./install_ubuntu.sh` to install any dependencies.  This should work on Ubuntu or on the
vagrant container referenced on the [Buildroot Manual](https://buildroot.org/downloads/manual/manual.html) startup
page.

## Building

Run `./build.sh` to build the image.  This script is currently hard-coded to use an x86_64 default
build target config.  The config will only be updated when the .config file does not exist.  When pulling
in configuration changes, delete the buildroot/.config file before running the build script.  This will require
a complete rebuild.

## Starting Qemu

Typically you will want to open a new [screen](https://www.gnu.org/software/screen/). session using `screen -S qemu` or similar before starting
QEMU. Then from this screen session, run `./start_qemu.sh`.
To detach, use Ctrl-a d.
You can reconnect to this screen later using `screen -r qemu`.
When you want to stop the qemu target, use `pkill qemu`

## Saving Configs
When you make changes to buildroot configuration files, run `./save_configs.sh` to export these configurations to
the br2-external tree for commit.

# RPI4 2GB Talos

Simple script to rebuild Talos distro with reduced minimal memory
check to allow the control plane installation on a 2Gb RPI4.

Scripts are meant to run on a Ubuntu system. Running in
a virtual machine is fine. Talos cannot be built in a non-Linux
system because it requires the `/dev/loop` loopback device.

How to run:

- `cd build`
- `./build_prereq.sh`
- Check docker registry settings inside `build.sh` (make sure to `docker login` if necessary)
- `cd talos`
- `git checkout v1.6.7` (using tag) or `git checkout -b release-1.6` (using branch)
- `../build.sh`

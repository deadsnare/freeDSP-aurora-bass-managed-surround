# How to build

## Prerequisites

Ensure that Python 2.7 is installed on your system:

```(shell)
sudo apt install python2
```

Clone the official `freeDSP-aurora` repository:

```(shell)
git clone git@github.com:freeDSP/freeDSP-aurora.git
```

Inside the cloned repository, generate `aurora.jgz` from `aurora.js` as described [here](https://github.com/freeDSP/freeDSP-aurora/blob/master/SOURCES/WEBAPP/js/README.md):

```(shell)
cd path/to/freeDSP-aurora/SOURCES/WEBAPP/js
cat aurora.js | gzip > aurora.jgz
```

## Building

To build, navigate to this repository's root folder and execute `build.sh`:

```(shell)
cd path/to/freeDSP-aurora-bass-management-surround
. build.sh
```

The script assumes that both the cloned `freeDSP-aurora` and `freeDSP-aurora-bass-management-surround` repositories reside in the same parent folder. If this is not the case, you need to modify `build.sh` accordingly. Should the version number of freeDSP Aurora ever change, update the `version` variable in `build.sh`. Also, keep in mind that you may have to generate `aurora.jgz` again.

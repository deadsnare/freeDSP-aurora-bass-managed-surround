#!/bin/bash

# ---- Variables/constants ----
# Version number, must match freeDSP-aurora version number
version=v2.2.2
# Path to sigma2aurora directory relative to freeDSP-aurora-bass-managed-surround directory
path_sigma2aurora=../freeDSP-aurora/SOURCES/sigma2aurora
# Path to freeDSP-aurora-bass-managed-surround directory relative to sigma2aurora directory
path_aurora_bms=../../../freeDSP-aurora-bass-managed-surround

# Plugin names
plugins="53BassManagement 71BassManagement"

# ---- Actual script ----
cd $path_sigma2aurora
for plugin in $plugins
do
    python2 sigma2aurora.py \
        $path_aurora_bms/SOURCES/SIGMASTUDIO/$plugin/$plugin.xml \
        $plugin \
        --version $version \
        --gui $path_aurora_bms/SOURCES/WEBAPP/plugins/$plugin/dsp.html \
        --outputdir $path_aurora_bms/RELEASES
done
cd $path_aurora_bms
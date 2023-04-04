#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/delta/Descartes/Git/DACSDC2021/ultra_core/ultracore_125/.autopilot/db/a.g.bc ${1+"$@"}

#!/bin/bash
LOC=PATH
## stdout ##
exec   > >(tee -ia $LOC/fw.log)
## stderr ##
exec  2> >(tee -ia $LOC/fw1.log >& 2)
## bash trace ##
exec 19> $LOC/fw2.log
export BASH_XTRACEFD="19"
set -x

### Start Your code down ###

#!/bin/bash
#
# Set up path in Speed Dreams startup script.

shopt -s extglob

fn=${SETUP_INSTALLPATH}/speed-dreams

# rip off last "/"
ip=${SETUP_INSTALLPATH/%\//}

# replace all "/" with "\/" to use with regexp.
fn2=${ip//\//\\\/}

ed -s $fn <<EOF
,s/@prefix@/$fn2/g
,wq
EOF


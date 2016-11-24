#!/bin/sh

chown -R gerrit2 ${GERRIT_HOME}

su -c /usr/local/bin/gerrit-start.sh gerrit2

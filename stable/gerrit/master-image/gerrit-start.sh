#!/bin/sh

java -jar "${GERRIT_WAR}" init --batch -d "${GERRIT_SITE}"
java -jar "${GERRIT_WAR}" reindex -d "${GERRIT_SITE}"

${GERRIT_SITE}/bin/gerrit.sh daemon

FROM java:openjdk-8-jre-alpine

ENV GERRIT_HOME /var/gerrit
ENV GERRIT_WAR ${GERRIT_HOME}/gerrit.war
ENV GERRIT_SITE ${GERRIT_HOME}/review_site
ENV GERRIT_VERSION 2.13.2

RUN adduser -D -u 1000 -h "${GERRIT_HOME}" gerrit2

RUN apk add --update --no-cache git openssh openssl bash perl perl-cgi curl git-gitweb

COPY gerrit-start.sh /usr/local/bin/gerrit-start.sh
COPY gerrit-entrypoint.sh /usr/local/bin/gerrit-entrypoint.sh

USER gerrit2

WORKDIR ${GERRIT_HOME}
RUN wget https://gerrit-releases.storage.googleapis.com/gerrit-${GERRIT_VERSION}.war -O ${GERRIT_WAR}

EXPOSE 8080 29418

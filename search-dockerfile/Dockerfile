FROM jetty:9.3.10

LABEL Author="Robert Kaye <rob@metabrainz.org>"

WORKDIR $JETTY_HOME
RUN curl -o $JETTY_HOME/webapps/ROOT.war https://storage.gra3.cloud.ovh.net/v1/AUTH_7d770c6c52a34008a8beaf8d1d7208ac/tonearm-deploy/searchserver.war

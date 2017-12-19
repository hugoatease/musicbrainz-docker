FROM airdock/oracle-jdk:jdk-8u74

WORKDIR /home/search
RUN curl -o /home/search/updater.jar https://storage.gra3.cloud.ovh.net/v1/AUTH_7d770c6c52a34008a8beaf8d1d7208ac/tonearm-deploy/updater.jar

COPY updateindex.sh /home/search

VOLUME ["/home/search/data"]

FROM airdock/oracle-jdk:jdk-8u74

WORKDIR /home/search
RUN curl -o /home/search/updater.jar http://storage.gra3.cloud.ovh.net/v1/AUTH_7d770c6c52a34008a8beaf8d1d7208ac/tonearm-deploy/updater.jar

COPY updateindex.sh /home/search
RUN chmod u+x /home/search/updateindex.sh

VOLUME ["/home/search/data"]

CMD /home/search/updateindex.sh

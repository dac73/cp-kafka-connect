from confluentinc/cp-kafka-connect:6.1.0
USER root
RUN mkdir -p /data/plugins && \
    chown -R appuser:appuser /data/plugins
USER appuser
WORKDIR /data/plugins
RUN wget https://repo1.maven.org/maven2/io/debezium/debezium-connector-postgres/1.5.0.Final/debezium-connector-postgres-1.5.0.Final-plugin.tar.gz
RUN tar -xvf debezium-connector-postgres-1.5.0.Final-plugin.tar.gz && \
    rm -f *.gz

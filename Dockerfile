FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.0

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/
COPY --chown=elasticsearch:elasticsearch plugins /usr/share/elasticsearch/plugins/

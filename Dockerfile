FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.0

COPY --chown=elasticsearch:elasticsearch config/elasticsearch.yml /usr/share/elasticsearch/config/
COPY --chown=elasticsearch:elasticsearch plugins /usr/share/elasticsearch/plugins/

#copy the resource
COPY --chown=elasticsearch:elasticsearch config/stopwords.txt /usr/share/elasticsearch/config/
COPY --chown=elasticsearch:elasticsearch config/synonyms.txt /usr/share/elasticsearch/config/

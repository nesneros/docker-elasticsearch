FROM docker.elastic.co/elasticsearch/elasticsearch:6.1.3

COPY elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch



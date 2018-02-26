FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2

COPY elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch



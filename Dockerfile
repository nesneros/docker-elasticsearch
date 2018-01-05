FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.4
RUN yes | elasticsearch-plugin install https://storage.googleapis.com/static.miadata.dk/downloads/elasticsearch-dataformat-5.6.4.zip

COPY elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch

# Comment to trigger change in file

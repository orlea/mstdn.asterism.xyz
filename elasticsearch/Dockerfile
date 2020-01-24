ARG ELASTIC_VER=6.8.5
ARG SUDACHI_PLUGIN_VER=1.3.2

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VER}

ARG ELASTIC_VER
ARG SUDACHI_PLUGIN_VER


RUN curl -OL https://object-storage.tyo2.conoha.io/v1/nc_2520839e1f9641b08211a5c85243124a/sudachi/sudachi-dictionary-20190308-core.zip && \
    curl -OL https://object-storage.tyo2.conoha.io/v1/nc_2520839e1f9641b08211a5c85243124a/sudachi/sudachi-dictionary-20190308-full.zip &&  \
    unzip -o -d config/sudachi -j  'sudachi-dictionary*.zip'  && \
    rm -f sudachi-dictionary*.zip && \
    bin/elasticsearch-plugin install https://github.com/WorksApplications/elasticsearch-sudachi/releases/download/v6.8.5-1.3.2/analysis-sudachi-elasticsearch6.8-1.3.2.zip

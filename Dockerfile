FROM grafana/grafana
RUN mkdir -p /data/grafana/plugins && chown -R grafana:grafana /data/grafana/plugins
RUN grafana-cli plugins --pluginsDir "/data/grafana/plugins" install grafana-worldmap-panel
ENV "GF_PATHS_PLUGINS=/data/grafana/plugins"

FROM grafana/grafana
RUN grafana-cli plugins install grafana-worldmap-panel
RUN service grafana-server restart

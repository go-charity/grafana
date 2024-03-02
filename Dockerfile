FROM grafana/grafana

COPY ./dashboards/ /etc/grafana/provisioning/dashboards/
COPY ./datasources/ /etc/grafana/provisioning/datasources/

EXPOSE 3000
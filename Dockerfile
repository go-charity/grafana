FROM grafana/grafana

COPY ./dashboards/ /etc/grafana/provisioning/dashboards/
COPY ./datasources/ /etc/grafana/provisioning/datasources/

ENV GF_DASHBOARDS_DEFAULT_HOME_DASHBOARD_PATH=/var/lib/grafana/provisioning/dashboards/dashboard.json

EXPOSE 3000
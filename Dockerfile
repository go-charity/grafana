FROM grafana/grafana

COPY ./dashboards/ /etc/grafana/provisioning/dashboards/
COPY ./datasources/ /etc/grafana/provisioning/datasources/

ENV GF_DASHBOARDS_DEFAULT_HOME_DASHBOARD_PATH=/etc/grafana/provisioning/dashboards/dashboard.json
ENV GF_AUTH_ANONYMOUS_ENABLED=true

EXPOSE 3000
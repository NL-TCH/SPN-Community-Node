FROM ubuntu:22.04

ENV SCRIPT_INSTALLED=false

COPY init.sh /data/
COPY spn_installer.sh /data/
COPY spn_startup.sh /data/
COPY config.json /data/

RUN chmod -R +x /data*

EXPOSE 17
EXPOSE 80

#CMD ["/opt/safing/spn/portmaster-start", "--data", "/opt/safing/spn", "hub"]
CMD ["/data/init.sh"]
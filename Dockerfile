FROM ubuntu:22.04

ENV SCRIPT_INSTALLED=false

COPY init.sh /data/
COPY spn_installer.sh /data/
COPY spn_startup.sh /data/

RUN chmod -R +x /data*

EXPOSE 17
EXPOSE 80
EXPOSE 8080
EXPOSE 17027
EXPOSE 17080


CMD ["/data/init.sh"]
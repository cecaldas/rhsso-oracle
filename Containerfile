FROM registry.redhat.io/rh-sso-7/sso76-openshift-rhel8:7.6-47


COPY extensions/sso-extensions.cli /opt/eap/extensions/
COPY extensions/jdbc/ojdbc8.jar /opt/eap/extensions/jdbc/ojdbc8.jar

USER root

#RUN chmod 774 /opt/eap/extensions/*.sh && \
#    sh /opt/eap/extensions/extensions.sh

# Define the user
USER 185

# Define the working directory
WORKDIR /home/jboss
# Define run cmd
CMD ["/opt/eap/bin/openshift-launch.sh"]

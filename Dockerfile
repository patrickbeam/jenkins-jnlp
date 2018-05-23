FROM jenkins/jnlp-slave:3.16-1-alpine

USER root

COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

USER jenkins

CMD ["sh", "-c", "/usr/local/bin/start.sh"]

FROM jenkins/slave:3.19-1

USER root

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install sudo -y

COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

USER jenkins

CMD ["sh", "-c", "/usr/local/bin/start.sh"]

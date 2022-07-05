FROM openjdk:11

ARG JAR_FILE
ADD /target/${JAR_FILE} /eureka-server/target/${JAR_FILE}
ADD /scripts /eureka-server/scripts

ENV JAVA_OPTS "-server \
              -Xms1g \
              -Xmx1g"

RUN apt-get update && \
    apt-get install -y wget curl telnet inetutils-ping software-properties-common && \
    apt-get install -y less && \
    apt-get install -y vim && \
    apt-get install -y procps && \
    rm -rf /var/lib/apt/lists/* ;

WORKDIR /eureka-server
ENTRYPOINT ["bash", "scripts/start.sh"]
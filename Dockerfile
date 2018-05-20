# Starting point - Official image with OpenJRE 8
FROM java:8-jre

MAINTAINER Paul Choi <paulchoi@alum.berkeley.edu>

WORKDIR /minecraft

# Accept Mojang EULA
RUN echo "eula=true" > eula.txt

# Silence harmless but scary sounding errors
RUN echo "[]" > banned-ips.json
RUN echo "[]" > banned-players.json
RUN echo "[]" > ops.json
RUN echo "[]" > usercache.json
RUN echo "[]" > whitelist.json

# Add server settings
ADD server.properties /minecraft/

ADD https://yivesmirror.com/files/craftbukkit/craftbukkit-latest.jar /minecraft/

# Downloaded from https://github.com/zhuowei/RaspberryJuice
ADD https://github.com/zhuowei/RaspberryJuice/raw/master/jars/raspberryjuice-1.11.jar /minecraft/plugins/

# Add start script
ADD start.sh /

# Port 4711 is for mcpi
EXPOSE 4711
EXPOSE 25565

ENTRYPOINT ["/start.sh"]

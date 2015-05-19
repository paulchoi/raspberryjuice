# Starting point - Official image with OpenJRE 8
FROM java:8-jre

MAINTAINER Paul Choi <paulchoi@alum.berkeley.edu>

WORKDIR /minecraft

# Accept Mojang EULA
RUN echo "eula=TRUE" > eula.txt

# Silence harmless but scary sounding errors
RUN echo "[]" > banned-ips.json
RUN echo "[]" > banned-players.json
RUN echo "[]" > ops.json
RUN echo "[]" > usercache.json
RUN echo "[]" > whitelist.json

# Add server settings
ADD server.properties /minecraft/

# Downloaded from http://tcpr.ca/craftbukkit
ADD craftbukkit-1.8.3-R0.1-SNAPSHOT-latest.jar /minecraft/

# Downloaded from https://github.com/zhuowei/RaspberryJuice
ADD RaspberryJuice/jars/raspberryjuice-1.7.jar /minecraft/plugins/

# Port 4711 is for mcpi
EXPOSE 4711
EXPOSE 25565

CMD java -Xmx1024M -Xms1024M \
    -jar /minecraft/`find /minecraft/ -name "craftbukkit*.jar" \
        | xargs basename`

## raspberryjuice
Docker build of the Minecraft server + [Raspberry Juice plugin](https://github.com/zhuowei/RaspberryJuice) (Minecraft Pi socket API)

### Get the pre-built container
````bash
$ docker pull paulchoi/raspberryjuice:latest
$ docker run -d -p 25565:25565 -p 4711:4711 paulchoi/raspberryjuice
````
https://registry.hub.docker.com/u/paulchoi/raspberryjuice/

### Build info
[Dockerfile](https://github.com/paulchoi/raspberryjuice) at GitHub.

Based on java:8-jre official image (Debian + OpenJDK 8's JRE):
````
FROM java:8-jre
````

### Docker run
To run the server:
````
docker run -d -p 25565:25565 -p 4711:4711 paulchoi/raspberryjuice
````

Port 25565 is Minecraft server.  
Port 4711 is the Minecraft Pi socket.

### Interact with Minecraft using Python
To get started, do the following:

1. Find out your Docker VM's IP. For Boot2Docker, run "boot2docker ip"
2. Run Minecraft and add your IP as a new server.
3. Join Multiplayer.
4. Now you are ready to interact with Minecraft using Python!

Note: Step #3 is important, because certain Python methods require a player to be present in server (such as .playerPos())

### Additional resources
There's lots of information on teaching Python programming with Minecraft here:  
[mcpipy.com](https://mcpipy.wordpress.com)

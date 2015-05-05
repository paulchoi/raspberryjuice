# raspberryjuice
Docker build of the Minecraft server + Raspberry Juice plugin (Minecraft Pi socket API)


To run the server:
````bash
 docker run -d -p 25565:25565 -p 4711:4711 paulchoi/raspberryjuice
````

Then:
  1. Find out your Docker VM's IP. For Boot2Docker, run "boot2docker ip"
  2. Run Minecraft and add your IP as a new server.
  3. Join Multiplayer.
  4. Now you are ready to interact with Minecraft using Python!

Note: Step #3 is important, because certain Python methods require a player to be present in server (such as .playerPos())

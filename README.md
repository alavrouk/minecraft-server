# minecraft-server
1.16 Minecraft Server Docker Container\
\
Jarfile can be changed to different versions as long as it is named "server.jar". \
World can be changed to your preferred world by swapping the "world" file.\
\
Run the following commands in order to build and run the server.\
\
sudo docker build -t YOURUSERNAME/minecraft-server .\
sudo docker run -d -p 25565:25565 --name minecraft-server YOURUSERNAME/minecraft-server
  

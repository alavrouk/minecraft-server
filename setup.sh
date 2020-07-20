#!/bin/bash

chmod ugo+wrx /etc/systemd/system
cp /home/${USER}/minecraft-server/backups/minecraftbackup.service > /etc/systemd/system
cp /home/${USER}/minecraft-server/backups/minecraftbackup.service > /etc/systemd/system
systemctl daemon-reload
systemctl enable minecraftbackup.timer
systemctl start minecraftbackup.timer
sudo docker build -t ${USER}/minecraft-server .
sudo docker run -d -p 25565:25565 --name minecraft-server ${USER}/minecraft-server
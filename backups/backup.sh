#!/bin/bash

name="$(date +"%Y_%m_%d_%I_%M_%p").tar"
sudo docker export minecraft-server > /home/${USER}/minecraft-server/backups/${name}
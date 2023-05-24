#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

# Script de inicialização das instâncias EC2
│

#!/bin/bash
sudo apt update -y
sudo apt install -y apache2
sudo systemctl start apache2
echo "<h1>Auto Scaling Group Instance</h1>" > /var/www/html/index.html

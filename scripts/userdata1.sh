#!/bin/bash
# Hardware requirements: AWS Linux 2 with mimum t2.micro type instance 
# Install Apache HTTP Server (httpd)
sudo yum install httpd -y

# Install Git
sudo yum install git -y


# Clone the repository
git clone https://github.com/chiella01/ecommerce-web-app-data.git

# Copy the files inside the cloned folder to the desired location
sudo cp -r ecommerce-web-app-data/server1/* /var/www/html/

# To get the current hostname address
echo "<center><p>Running the website from instance host: $(hostname -f)</p></center>" >> /var/www/html/index.html

# Start and enable the HTTP server
sudo systemctl start httpd
sudo systemctl enable httpd
# Copy the files inside the cloned folder to the desired location
sudo cp -r ./ecommerce-web-app/server1/* /var/www/html/

# To get the current hostname address
echo "<center><p>Running the website from instance host: $(hostname -f)</p></center>" >> /var/www/html/index.html

# Start and enable the HTTP server
sudo systemctl start httpd
sudo systemctl enable httpd
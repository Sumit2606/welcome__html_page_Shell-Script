#!/bin/bash

# Update system packages
sudo yum update -y

# Install Nginx web server
sudo yum install nginx -y

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Create a simple HTML website
sudo bash -c 'cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>My AWS Ubuntu Web Server</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin-top: 50px; }
        h1 { color: #007bff; }
    </style>
</head>
<body>
    <h1>Welcome to My Website!</h1>
    <p>Hosted on an Ubuntu EC2 instance using Nginx</p>
</body>
</html>
EOF'

# Restart Nginx to apply changes
sudo systemctl restart nginx

echo "Website deployed successfully!"

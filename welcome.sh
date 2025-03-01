#!/bin/bash

# Update system packages
sudo yum update -y

# Install Apache web server
sudo yum install nginx -y

# Start and enable Apache service
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
    <p>Hosted on an Ubuntu EC2 instance using Apache</p>
</body>
</html>
EOF'

# Restart Apache to apply changes
sudo systemctl restart nginx



[ec2-user@ip-172-31-90-239 ~]$ ./SP.sh
Last metadata expiration check: 3:40:17 ago on Sat Mar  1 07:56:58 2025.
Dependencies resolved.
Nothing to do.
Complete!
Last metadata expiration check: 3:40:17 ago on Sat Mar  1 07:56:58 2025.
Package nginx-1:1.26.3-1.amzn2023.0.1.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
Website deployed successfully!
[ec2-user@ip-172-31-90-239 ~]$ cat SP.sh
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

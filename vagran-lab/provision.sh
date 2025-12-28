#!/usr/bin/env bash

echo "Configuring Apache..."
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
echo "nameserver 8.8.4.4" | sudo tee -a /etc/resolv.conf > /dev/null
sudo dnf install -y httpd

# Desativa página de teste (caso ainda ativa)
sudo mv /etc/httpd/conf.d/welcome.conf /etc/httpd/conf.d/welcome.conf.disabled 2>/dev/null || true
# Correct permissions and SELinux context for synchronized files.
sudo chown -R apache:apache /var/www/html
sudo restorecon -R /var/www/html

#Allow firewall access and start the service.
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
sudo systemctl enable httpd
sudo systemctl restart httpd

echo "Apache ready."
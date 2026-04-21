#!/bin/bash
mkdir -p /home/ec2-user/uploads
chown -R ec2-user:ec2-user /home/ec2-user/uploads

cat <<'EOF' > /usr/local/bin/s3-sync.sh
#!/bin/bash
/usr/bin/aws s3 sync /home/ec2-user/uploads s3://BUCKET_NAME/uploads/
EOF

chmod +x /usr/local/bin/s3-sync.sh

echo "* * * * * root /usr/local/bin/s3-sync.sh" >> /etc/crontab
systemctl restart crond
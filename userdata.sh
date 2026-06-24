#!/bin/bash
set -xe

mkdir -p /home/ec2-user/uploads
chown -R ec2-user:ec2-user /home/ec2-user/uploads
chmod 755 /home/ec2-user/uploads

cat <<'EOF' > /usr/local/bin/s3-sync.sh
#!/bin/bash
/usr/bin/aws s3 sync /home/ec2-user/uploads s3://BUCKET_NAME/uploads/
EOF

chmod +x /usr/local/bin/s3-sync.sh

# install cron if missing
dnf install -y cronie

# create cron job properly
cat <<'EOF' > /etc/cron.d/s3-sync
* * * * * root /usr/local/bin/s3-sync.sh >> /var/log/s3-sync.log 2>&1
EOF

chmod 644 /etc/cron.d/s3-sync

# enable and start cron service
systemctl enable crond
systemctl start crond
systemctl restart crond
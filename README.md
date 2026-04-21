🚀 Secure File Transfer Pipeline (AWS)

A secure and automated pipeline to upload files via SFTP and store them in Amazon S3 using AWS and Terraform.

🏗️ Architecture

FileZilla (SFTP) → EC2 (Upload Layer) → S3 (Secure Storage)

⚙️ Key Components
🖥️ Amazon EC2 (SFTP via SSH)
🪣 Amazon S3 (Private Bucket)
🔐 IAM Role (No Access Keys)
⏱️ Cron Job + AWS CLI (Automation)
🏗️ Terraform (Infrastructure as Code)

✨ Features:

🔒 Secure file transfer using SFTP
🔄 Automated sync from EC2 to S3
🛡️ IAM-based access (Least Privilege)
🚫 No hardcoded credentials
☁️ Fully private architecture

🔄 How it Works:

📤 Upload files to EC2 using FileZilla (SFTP)
📂 Files stored in /home/ec2-user/uploads
⏱️ Cron job runs every minute
🔁 AWS CLI syncs files to S3 bucket


🧰 Tech Stack
AWS | Terraform | Linux | SFTP | IAM | AWS CLI

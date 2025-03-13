1. Tạo Role cho Ec2
![image](https://github.com/user-attachments/assets/651b24a9-db8c-459f-b67a-b59567294fbd)

2. Tạo role cho CodeDeploy
![image](https://github.com/user-attachments/assets/88470da5-be22-4e75-a551-9e0b36d10dd9)

3.Tạo 1 user phục vụ CICD + gắn các role thao táo với S3, CodeDeploy 

4. Launch Ec2 với IAM Role đã tạo + gắn SG + config user data cài đặt các config (tùy framework) + cài codedeploy agent 
#!/bin/bash
apt update -y && apt upgrade -y

curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs

if ! command -v npm &> /dev/null; then
    apt install -y npm
fi

npm install -g serve

apt install -y awscli

apt install -y ruby
cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
systemctl enable codedeploy-agent
systemctl start codedeploy-agent

chmod +x /var/www/frontend/scripts/start.sh

# Khởi động lại EC2 để áp dụng toàn bộ cấu hình
reboot


5. Khai báo các variable của GitlabCI về user credentials + thông tin bucket + codedeploy application, deploymentgroup

6. Khai báo file appspec.yaml để định nghĩa chạy script bằng codedeploy 

7. Commit lên branch và test

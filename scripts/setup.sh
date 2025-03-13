#!/bin/bash

# Cập nhật gói và cài Node.js + npm
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Kiểm tra lại Node.js và npm
node -v
npm -v

# Cài serve global để chạy frontend
npm install -g serve

# Kiểm tra lại serve có hoạt động không
which serve

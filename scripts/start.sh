#!/bin/bash
cd /var/www/frontend

# Cài đặt dependencies (bỏ qua devDependencies)
npm install --omit=dev

# Dừng tiến trình cũ (nếu có)
pkill -f "serve -s build -l 3000"

# Khởi động lại frontend
nohup serve -s build -l 3000 > frontend.log 2>&1 &

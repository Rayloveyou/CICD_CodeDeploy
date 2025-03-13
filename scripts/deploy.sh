#!/bin/bash
cd /var/www/frontend
npm install --omit=dev
nohup serve -s build -l 3000 > frontend.log 2>&1 &

#!/bin/bash
cd /var/www/frontend
nohup npm start > frontend.log 2>&1 &

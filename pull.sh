#!/bin/bash

echo "start pull-->"
date "+%Y-%m-%d %H:%M:%S"

cd /etc/www/html/html
git pull

echo "<--end pull"

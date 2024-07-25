#!/bin/bash

# 进入指定目录
cd /etc/homeproxy/ruleset || exit

# 调用 download_ruleset.sh 脚本并将输出重定向到 cron.log
sh download_ruleset.sh >> /etc/homeproxy/ruleset/cron.log 2>&1

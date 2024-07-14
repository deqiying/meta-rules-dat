#!/bin/sh

# 检查 ruleset_list.txt 文件是否存在
if [ ! -f ruleset_list.txt ]; then
    echo "ruleset_list.txt 文件不存在"
    exit 1
fi

# 读取 ruleset_list.txt 并下载每个链接的文件
while IFS= read -r url; do
    # 获取文件名
    filename=$(basename "$url")

    # 下载文件并覆盖同名文件
    wget -O "$filename" "$url"
done < ruleset_list.txt

echo "所有文件已下载并覆盖"

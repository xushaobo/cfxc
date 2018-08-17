#! /bin/bash
FROM_ENCODING="GB18030"
TO_ENCODING="UTF-8"
### 转换命令
CONVERT="iconv -f $FROM_ENCODING -t $TO_ENCODING"

### 使用循环转换多个文件
for file in *.txt; do
$CONVERT "$file" -o "$file"
done

exit 0


#17.File Compression/Decompression Script




#!/bin/bash

file_to_compress="/root/shell/files/3.txt"


gzip "$file_to_compress"
echo "file compressed: $file_to_compress.gz"


<<EOF
#!/bin/bash

file_to_compress="/root/shell/files/3.txt"


gzip -d  "$file_to_compress"
echo "file decompressed: $file_to_compress.gz"
EOF

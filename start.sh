#!/bin/bash

[[ "$COLOR" =~ ^(rnd|random|RND|RANDOM)$ ]] && COLOR="#$(printf '%03x' $(($RANDOM % 4096)))"
cat > /var/www/html/index.nginx-debian.html <<EOF
<html>
<body bgcolor="$COLOR">
<h1>$TITLE</h1>

$BODY

<hr/>
hostname: $HOSTNAME
</body>
</html>
EOF

exec nginx -g "daemon off;"

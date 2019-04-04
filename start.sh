#!/bin/bash

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


nginx -g "daemon off;"

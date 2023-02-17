#!/bin/bash

[[ "$COLOR" =~ ^(rnd|random|RND|RANDOM)$ ]] && COLOR="#$(printf '%03x' $(($RANDOM % 4096)))"

if [[ ! "$BODYSTYLE" ]]; then 
  BODYSTYLE="background: ${COLOR}"
  [ -z $COLOR2 ] || BODYSTYLE="background: linear-gradient(${COLOR}, 80%, ${COLOR2})"
fi

cat > /usr/share/nginx/html/index.html <<EOF
<html>
<body style="${BODYSTYLE};">
<h1>$TITLE</h1>

$BODY

<hr/>
hostname: $HOSTNAME
</body>
</html>
EOF

exec nginx -g "daemon off;"

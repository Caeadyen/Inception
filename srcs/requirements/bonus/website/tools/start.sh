#!/bin/bash

envsubst '$FOOTER' < /tmp/config.toml > /static-web/config.toml
envsubst '$ADMINER' < /tmp/adminer.md > /static-web/content/pages/adminer.md
envsubst '$CADVISOR' < /tmp/cadvisor.md > /static-web/content/pages/cadvisor.md
envsubst '$WORDPRESS $WORDPRESSLOGIN' < /tmp/wordpress.md > /static-web/content/pages/wordpress.md

cd static-web

hugo server --bind=0.0.0.0 -p 3000
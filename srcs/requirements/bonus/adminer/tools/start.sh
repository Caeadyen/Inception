#!/bin/bash

mkdir var/www/html/adminer

wget https://www.adminer.org/latest.php -O var/www/html/adminer/index.php

cd var/www/html/adminer

php -S 0.0.0.0:4242

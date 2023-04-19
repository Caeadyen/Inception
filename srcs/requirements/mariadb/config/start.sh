#!/bin/bash

envsubst  < /tmp/dbinit.sql > /dbinit.sql

mysqld --user=mysql --init-file=/dbinit.sql

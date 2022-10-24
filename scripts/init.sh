#!/bin/sh
mkdir /data/datalakebucket
mkdir /data/landingbucket

minio server --console-address :$CONSOLE_PORT /data

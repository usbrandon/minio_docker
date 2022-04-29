#!/bin/sh
mkdir /data/datalake-bucket
mkdir /data/landing-bucket

minio server --console-address :$CONSOLE_PORT /data
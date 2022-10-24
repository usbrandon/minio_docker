# Minio on Docker Compose
Inspired from [Datafuel Respository](https://github.com/datafuel/minio_docker)

# About
Docker Compose (local) implementation of Minio. The purpose of this containerization is to provide an object store for Dremio to use
that is internal instead of having Amazon S3 as an external dependency.

# Important
Dremio and MinIO docker-compose.yml files are configured to use a custom docker network to talk to each other.
Please make sure you have the network created first by checking 'docker network list' and make sure **data-network** exists.

If the network does not exist, run the command
'docker network create data-network'

This needs to be completed before running 'docker-compose up', or 'docker compose up'

# Quickstart
1. Clone repo `git clone https://github.com/usbrandon/minio_docker.git`
2. Run `cd minio_docker`
3. Rename **.env.example** to **.env** and replace dummy values with yours
4. Run `docker-compose up` then access the services

# What's what?

When you launch the container, it will create a **data** folder in the current directory where all physical files will be saved.
There is also a scripts/init.sh file which is included in the image build and run the first time the container starts.
It ends up creating two folders within the internal data folder that are represented to the end user as buckets.

## Minio Client

You will find it useful to install the MinIO client so you can list, copy, move files to the object store.
https://min.io/docs/minio/linux/reference/minio-mc.html

'curl https://dl.min.io/client/mc/release/linux-amd64/mc \
  --create-dirs \
    -o $HOME/minio-binaries/mc
    
    chmod +x $HOME/minio-binaries/mc
    export PATH=$PATH:$HOME/minio-binaries/
    
    mc --help'
    

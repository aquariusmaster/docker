# Dockerized oracle database 19с

## Getting Started
1. Clone oracle [docker-images repository](https://github.com/oracle/docker-images/blob/master/OracleDatabase/SingleInstance/README.md):
   ```bash
   git clone git@github.com:oracle/docker-images.git
   ```
2. Download the Oracle Database 19.3 - Enterprise Edition distribution for linux from [Oracle Technology Network](http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html), make sure you use the linux link: *Linux x86-64*.
   
3. Put downloaded binaries `LINUX.X64_193000_db_home.zip` to `~/workspace/docker-images/OracleDatabase/SingleInstance/dockerfiles/19.3.0/` folder.

4. Change directory and run build image script:
   ```bash
   cd ~/workspace/docker-images/OracleDatabase/SingleInstance/dockerfiles/
   ./buildDockerImage.sh -v 19.3.0 -e
   ```
5. After the image is built you can start docker image by using Docker Compose:
   ```bash
   docker-compose up
   ```
   It may take up to 20-30 minutes the first time to run the container.

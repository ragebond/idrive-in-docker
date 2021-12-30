FROM ubuntu:latest

RUN \
  echo "**** install build packages ****" && \
  apt-get update && \
  apt-get install -y unzip curl perl && \
  echo "**** download and unzip idrive ****" && \
  mkdir -p /idrive && \
  cd /idrive && \
  curl -O https://www.idrivedownloads.com/downloads/linux/download-for-linux/IDriveForLinux.zip && \
  unzip IDriveForLinux.zip && \
  rm IDriveForLinux.zip && \
  cd /idrive/IDriveForLinux/scripts && \
  chmod a+x *.pl

# ports and volumes
VOLUME /config

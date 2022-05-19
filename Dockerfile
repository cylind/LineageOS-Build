FROM ubuntu:latest

ADD build.sh ~/build.sh

RUN apt update && \
    apt upgrade -y && \
    apt install bc bison build-essential ccache curl flex g++-multilib \
    gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev \
    lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev \
    libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip \
    zlib1g-dev python-is-python3 -y && \
    bash ~/build.sh

CMD ~/bin/http-file-server -p $PORT $OUT

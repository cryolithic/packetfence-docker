FROM debain:9
RUN echo 'deb http://inverse.ca/downloads/PacketFence/debian stretch stretch' \
    > /etc/apt/sources.list.d/packetfence.list
RUN apt-key adv --keyserver keys.gnupg.net --recv-key 0x810273C4
RUN apt-get update
RUN apt-install packetfence

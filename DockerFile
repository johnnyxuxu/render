FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -f /var/lib/apt /lists/* /tmp/* /var/tmp/*

RUN echo 'root:q1w2e3r4' | chpasswd

EXPOSE 22
CMD ["/usr/bin/shellinaboxd", "-t" ,"-s", "/:LOGIN"]

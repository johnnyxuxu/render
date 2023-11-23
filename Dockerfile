FROM debian:latest

RUN apt update && \
    apt install -y shellinabox && \
    apt clean
    
RUN echo 'root:q1w2e3r4' | chpasswd

EXPOSE 22
CMD ["/usr/bin/shellinaboxd", "-t" ,"-s", "/:LOGIN"]

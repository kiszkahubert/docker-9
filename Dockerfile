FROM busybox:glibc
LABEL org.opencontainers.image.authors="Hubert Kiszka"
COPY app.sh /app.sh
#Statyczny bash (Tu jest mozliwa oszczednosc ale nie potrafie zamienic tego skryptu zeby dzialal na sh)
RUN wget https://github.com/robxu9/bash-static/releases/download/5.1.016-1.2.2/bash-linux-x86_64 -O /bin/bash && \ 
    chmod +x /bin/bash && \
    chmod +x /app.sh
EXPOSE 8080
CMD ["/bin/bash", "/app.sh"]

FROM alpine:latest
LABEL org.opencontainers.image.authors="Hubert Kiszka"
WORKDIR /app
COPY app.sh .
RUN apk add --no-cache bash curl && chmod +x app.sh
EXPOSE 8080
CMD ["./app.sh"]

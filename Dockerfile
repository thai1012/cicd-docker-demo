FROM alpine:3.20
RUN apk add --no-cache bash curl python3
WORKDIR /app
COPY app/ /app/app/
RUN chmod +x /app/app/app.sh /app/app/test.sh
ENV PORT=8080
EXPOSE 8080
CMD ["/app/app/app.sh"]

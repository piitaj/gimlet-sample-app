FROM nginx:1.23.3-alpine-slim
RUN apk update && apk upgrade && \
    apk add --no-cache bash git nginx curl
ENV TITLE=Welcome
ENV BODY="Please use BODY/TITLE/COLOR env variables"
ENV COLOR=lightblue
COPY start.sh /
RUN chmod +x /start.sh
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
EXPOSE 80
CMD [ "/start.sh" ]

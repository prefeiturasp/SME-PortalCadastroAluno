FROM nginx:alpine
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
FROM nginx:alpine

#copy nginx  configuration
RUN rm -rf /usr/share/nginx/html/*
COPY ./index.html /usr/share/nginx/html
#start nginx
CMD ["nginx", "-g", "daemon off;"]
#open port
EXPOSE 80

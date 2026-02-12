FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy presentation files
COPY index.html /app/index.html
COPY images/ /app/images/

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]

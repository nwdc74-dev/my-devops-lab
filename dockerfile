# Step 1: Use the tiny, more secure Alpine version
FROM nginx:alpine

# Security Hardening: Create the PID file and set permissions for the 'nginx' user
# Alpine's directory structure is slightly different, so we use this:
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /var/cache/nginx /var/log/nginx

USER nginx

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

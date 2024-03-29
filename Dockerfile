FROM registry.access.redhat.com/ubi8/nginx-118

# Add application sources
# ADD test-app/nginx.conf "${NGINX_CONF_PATH}"
# ADD test-app/nginx-default-cfg/*.conf "${NGINX_DEFAULT_CONF_PATH}"
# ADD test-app/nginx-cfg/*.conf "${NGINX_CONFIGURATION_PATH}"
# ADD test-app/*.html .



COPY ./files/mynginx2.conf /opt/app-root/etc/nginx.default.d/mynginx2.conf



# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"



#FROM centos:7
#COPY ./nginx/nginx.repo /etc/yum.repos.d/nginx.repo
#
#RUN yum install -y nginx
#
#CMD ["nginx", "-g", "daemon off;"]

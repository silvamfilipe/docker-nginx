# load base image
FROM fsilva/ubuntu
MAINTAINER Filipe Silva <silvam.filipe@gmail.com>

VOLUME ["/var/www"]

# Install base packages
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    nginx \
    nginx-extras

# Add apache default vhost configuration
ADD default /etc/nginx/sites-available/default

EXPOSE 80 443
WORKDIR /var/www

CMD ["nginx", "-g", "daemon off;"]
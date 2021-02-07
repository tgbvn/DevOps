#Chay gitlab va registry
mkdir -p /var/gitlab/config
mkdir -p /var/gitlab/logs
mkdir -p /var/gitlab/data
mkdir /var/docker_registry
docker-compose -f gitlab-regitry_Docker-compose.yml up -d
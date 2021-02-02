
mkdir -p /var/gitlab/config
mkdir -p /var/gitlab/logs
mkdir -p /var/gitlab/data
mkdir /var/registry
chown -R 1000:1000 /var/gitlab
chown -R 1000:1000 /var/registry
docker-compose -d -f gitlab-regitry_Docker-compose.yml up
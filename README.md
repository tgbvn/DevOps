# DevOps

- Cài đặt
Đã test: ubuntu 18.04.5

* Chạy các file shell script:
sudo chmod -R +x DevOps/
sudo ./file.sh

1 Cai dat Docker
Reboot sau khi xong buoc nay

2 Cai dat Jenkins
https://docs.docker.com/compose/
https://dev.to/andresfmoya/install-jenkins-using-docker-compose-4cab

Địa chỉ: http://localhost:8080
Mật khẩu: $ cat /var/jenkins_home/secrets/initialAdminPassword

3 Cai dat gitlab, registry
https://viblo.asia/p/trien-khai-private-docker-registry-qzakzdMVGyO
https://vnsys.wordpress.com/2018/11/05/dung-private-docker-registry/
https://docs.docker.com/registry/deploying/
https://docs.gitlab.com/omnibus/docker/

Tạo khóa:
sudo openssl req \
  -newkey rsa:4096 -nodes -sha256 -keyout registry.local.key \
  -x509 -days 365 -out registry.local.crt
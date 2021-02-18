# Cài đặt

Chạy GitLab, Jenkins, Registry trên cùng host

1. Yêu cầu:

    Host cài Docker, Docker-compose (install_docker.sh)
2. Cài đặt:

- Enabling Docker remote API

$ sudo nano /lib/systemd/system/docker.service

Chỉnh sửa: ExecStart=/usr/bin/docker daemon -H fd:// -H tcp://0.0.0.0:4243

$systemctl daemon-reload

$sudo systemctl restart docker

Kiểm tra lại:

$ curl -X GET <http://localhost:4243/images/json>

Câu lệnh trên hiển thị các images trên host cho thấy docker deamon trên host đã có thể lắng nghe kết nối từ các ứng dụng khác.

- Docker compose up

$ docker-compose -f docker-compose.yml up -d

-Jenkins tương tác với docker CLI thông qua việc cho phép truy cập Docker socket, chạy với user là 1000:999 (jenkins:docker).

-Jenkins container có thể chạy lệnh Docker bên trong nó.

-Các ứng dụng chạy cùng mạng.

-File jenkins_Dockerfile để chạy Docker in Docker.

-Certs chứa SSL Certificate dùng cho Docker registry

- Default login

-Gitlab: root/12341234

-Jenkins: admin/12341234

- Tham khảo:

<https://dev.to/andresfmoya/install-jenkins-using-docker-compose-4cab>
<https://vnsys.wordpress.com/2018/11/05/dung-private-docker-registry/>
<https://docs.docker.com/registry/deploying/>
<https://docs.gitlab.com/omnibus/docker/>
<https://docs.docker.com/compose/compose-file/compose-file-v3/>
<https://training.play-with-docker.com/linux-registry-part2/>

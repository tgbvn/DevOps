# DevOps

Cài đặt bằng swarm:

Mô hình: 1 máy manager (jenkins), 1 máy worker (gitlab, registry)

Tại máy manager:
-Tạo image của jenkins
$ docker build  -t jenkins-docker .
-Khởi tạo swarm
$ docker swarm init
-Gán nhãn cho node muốn chạy gitlab và regisstry
$ docker node ls
$ docker node update --label-add type=repository 7f6
-Chạy swarm
$ docker stack deploy -c docker-compose.yml test
Tại máy worker:
-Tham gia swarm ở vị trí worker
$ docker swarm join --token SWMTKN-1-57bfcy6bc0egy9s50d8e2nuwjx76q9ulwr9jmlrc7xv36sc8zi-2kt1zqzurypjp0ovtnmuwvftk 192.168.183.174:2377

*Có lỗi khi khởi tạo root password của gitlab
-Reset mật khẩu sau khi container chứa gitlab chạy: <https://docs.gitlab.com/ee/security/reset_user_password.html#reset-your-root-password>

Tham khảo:
<https://docs.gitlab.com/omnibus/docker/#install-gitlab-using-docker-swarm-mode>
<https://github.com/BretFisher/udemy-docker-mastery/blob/main/secrets-sample-2/docker-compose.yml>
<https://docs.docker.com/compose/compose-file/compose-file-v3/>/>
<https://docs.docker.com/engine/reference/commandline/service_create/#specify-service-constraints---constraint>
<https://docs.docker.com/engine/swarm/manage-nodes/>
<https://docs.gitlab.com/omnibus/docker/#install-gitlab-using-docker-swarm-mode>e>
<https://docs.gitlab.com/ee/security/reset_user_password.html#reset-your-root-password>
<https://gitlab.com/gitlab-org/omnibus-gitlab/-/issues/5631>
<https://training.play-with-docker.com/linux-registry-part2/>

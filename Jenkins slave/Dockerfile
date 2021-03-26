FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y openssh-server

RUN useradd jenkins && \
    echo "jenkins:1234" | chpasswd && \
    mkdir -p /home/jenkins/.ssh && \
    chmod 700 /home/jenkins/.ssh && \
    mkdir -p -m0755 /var/run/sshd

COPY agent-key.pub /home/jenkins/.ssh/authorized_keys

RUN chown jenkins:jenkins   -R /home/jenkins && \
    chmod 400 /home/jenkins/.ssh/authorized_keys

CMD ["/usr/sbin/sshd", "-D"]
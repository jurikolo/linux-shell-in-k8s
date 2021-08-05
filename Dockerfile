FROM fedora:34

COPY files/repositories/* /etc/yum.repos.d/
COPY files/scripts/* /opt/

RUN dnf upgrade -y
RUN dnf install git python bash bash-completion httpie iputils netcat openssh-clients pwgen terraform vim jq golang-github-aliyun-cli zip -y

# Configure bash-git-prompt
RUN git clone https://github.com/magicmonty/bash-git-prompt.git /root/.bash-git-prompt --depth=1
RUN cat /opt/bash-git-prompt.sh >> /root/.bashrc

# Use vim instead of vi by default
RUN echo "alias vi='/bin/vim'"

CMD /bin/bash
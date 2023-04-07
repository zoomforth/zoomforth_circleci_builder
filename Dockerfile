FROM amazonlinux:2023

RUN yum install -y sudo && \
    yum groupinstall "Development tools" -y && \
    yum install wget -y && \
    wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo && \
    yum install -y nodejs && \
    yum install -y nodejs yarn aws-cli gettext python3.9 python3.9-pip python3-devel python-wheel python-setuptools && \
    curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    wget "https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip" && \
    unzip BrowserStackLocal-linux-x64.zip && \
    mv ./BrowserStackLocal /usr/local/bin/BrowserStackLocal && \
    chmod +x /usr/local/bin/BrowserStackLocal && \
    pip install virtualenv

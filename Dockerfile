FROM amazonlinux:2018.03

RUN yum install -y sudo && \
    yum groupinstall "Development tools" -y && \
    yum install wget -y && \
    wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo && \
    curl --silent --location https://rpm.nodesource.com/setup_10.x | bash - && \
    yum install -y nodejs && \
    yum install -y yarn docker docker-compose aws-cli gettext python36-devel python36-setuptools python36-pip && \
    curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    wget "https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip" && \
    unzip BrowserStackLocal-linux-x64.zip && \
    mv ./BrowserStackLocal /usr/local/bin/BrowserStackLocal && \
    chmod +x /usr/local/bin/BrowserStackLocal && \
    pip-3.6 install virtualenv

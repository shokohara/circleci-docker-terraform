FROM ubuntu:14.04.3

env DEBIAN_FRONTEND noninteractive
ENV TERRAFORM_VERSION 0.6.8
RUN apt-get install -y wget unzip &&\
      apt-get clean &&\
      rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* &&\
      wget -nv -O terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip &&\
      unzip -d /usr/local/bin terraform.zip && rm terraform.zip

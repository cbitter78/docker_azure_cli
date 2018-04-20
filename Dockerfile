FROM azuresdk/azure-cli-python

MAINTAINER Charles Bitter "cbitter78@gmail.com"

RUN apk add --no-cache zip wget zip && update-ca-certificates

RUN wget -t 3 -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip &&  \
       unzip -d /usr/sbin /tmp/terraform.zip && rm /tmp/terraform.zip

ENV EDITOR vim
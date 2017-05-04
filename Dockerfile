from centos:7
RUN yum install -y sudo
RUN curl -LO https://omnitruck.chef.io/install.sh && sudo bash ./install.sh -v 13 && rm install.sh
RUN chef-client --version

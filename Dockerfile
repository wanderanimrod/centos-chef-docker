from centos:7
RUN yum install -y sudo
RUN curl -LO https://omnitruck.chef.io/install.sh && sudo bash ./install.sh -v 13 && rm install.sh
RUN chef-client --version

VOLUME /provisioning
COPY sample-chef-repo /provisioning/

WORKDIR /provisioning
RUN ls -lah
RUN chef-client -z -j roles/example.json

ENTRYPOINT ["/bin/bash"]

FROM centos:7
LABEL maintainer="blndev"

RUN yum install -y \
	gcc \
	make \
	python-devel \
    python-setuptools \
    python-pip \
	rpm-build \
	rpm-sign && yum clean all

#RUN pip install ....

VOLUME [ "/tmp/rpm" ]
WORKDIR /tmp/rpm

ENTRYPOINT [ "/usr/local/bin/..." ]
CMD [ "--help" ]
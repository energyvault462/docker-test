FROM alpine

MAINTAINER Brent Johnson <brentj433@gmail.com>

ARG BUILD_DATE
ARG BUILD_NUMBER
ARG VERSION

LABEL org.metadata.build-date=$BUILD_DATE \
	   org.metadata.version=$VERSION.$BUILD_NUMBER \
	   org.metadata.name="" \
	   org.metadata.description="" \
	   org.metadata.url="https://github.com/energyvault462/docker-test" \
	   org.metadata.vcs-url="https://github.com/energyvault462/docker-test"

# Add repos

# Install Packages
RUN yum -y install epel-release && \
    yum -y update && \
    yum -y upgrade && \
    yum install -y \
					ack autoconf automake \
					bind-utils bison bzip2 bzr \
					cmake curl \
					file-devel \
					jq \
					libcurl-devel libffi-devel libicu-devel libpqxx-devel libtool libxml2-devel libxslt-devel libyaml-devel libtool-ltdl-devel \
					gcc-c++ git \
					make man maven mercurial \
					nmap nmap-ncat nodejs npm net-tools \
					patch postgresql95-devel postgresql-devel python-devel python-pip \
					readline-devel \
					sqlite-devel \
					tar \
					unzip \
					vim \
					wget \
					xmlsec1-openssl-devel \
					&& \
    yum clean all

WORKDIR /

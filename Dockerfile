FROM centos:7

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="Selenium with Headless Chrome and CentOS" \
    org.label-schema.vendor="liguoliang.com" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20180817"

RUN yum install unzip -y

RUN curl -O  https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
RUN yum install google-chrome-stable_current_x86_64.rpm -y

RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install selenium

RUN mkdir /opt/chrome
RUN curl -O https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip -d /opt/chrome

COPY selenium-with-headless-chrome.py .
RUN python selenium-with-headless-chrome.py

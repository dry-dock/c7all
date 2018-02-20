FROM drydock/u14:master

ADD . /c7all

RUN /c7all/install.sh && rm -rf /tmp && mkdir /tmp && chmod 1777 /tmp
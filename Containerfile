FROM registry.access.redhat.com/ubi8/nodejs-18:latest

LABEL "io.openshift.s2i.build.image"="registry.access.redhat.com/ubi8/nodejs-16:latest" \
      "io.openshift.s2i.build.source-location"="github-glue"

USER root
COPY github-glue /tmp/src
RUN chown -R 1001:0 /tmp/src

USER 1001
RUN /usr/libexec/s2i/assemble
CMD /usr/libexec/s2i/run

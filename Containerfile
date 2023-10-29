FROM quay.io/fedora/nodejs-20@sha256:23f5552bc7fc98d44c4e899ee02e74461a3b5dc133701116378273626c34af60

LABEL "io.openshift.s2i.build.image"="registry.access.redhat.com/ubi8/nodejs-16:latest" \
      "io.openshift.s2i.build.source-location"="github-glue"

USER root
COPY github-glue /tmp/src
RUN chown -R 1001:0 /tmp/src

USER 1001
RUN /usr/libexec/s2i/assemble
CMD /usr/libexec/s2i/run

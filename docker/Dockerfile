FROM            armdocker.rnd.ericsson.se/proj-5g-cicd-dev/jenkins/mason/cpp_test:latest

EXPOSE          9094
COPY            cert/domain.crt  /root
COPY            cert/domain.key  /root

ARG             BUILD_TYPE
ADD             ${BUILD_TYPE}/bin/dbproxyhttp2.usvc.elf /root
ENTRYPOINT      ["/root/dbproxyhttp2.usvc.elf"]

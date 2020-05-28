FROM theypsilon/quartus-lite-c5:17.1.dockerheavy0
LABEL maintainer="theypsilon@gmail.com"
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile SMS.qpf
CMD cat /project/output_files/SMS.rbf

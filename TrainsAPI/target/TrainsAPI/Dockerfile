# Auto Generated Dockerfile

FROM wso2/wso2micro-gw:latest
LABEL maintainer="dev@ballerina.io"

COPY TrainsAPI.balx /home/ballerina 

COPY ballerinaTruststore.p12 /home/ballerina/wso2/runtime/bre/security/ballerinaTruststore.p12
COPY micro-gw.conf /home/ballerina/conf/micro-gw.conf

CMD ballerina run  --config /home/ballerina/conf/micro-gw.conf TrainsAPI.balx

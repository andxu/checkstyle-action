# FROM openjdk:8-alpine

# ENV REVIEWDOG_VERSION=v0.10.1

# RUN wget -O - -q https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.34/checkstyle-8.34-all.jar > /checkstyle.jar
# RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ ${REVIEWDOG_VERSION}
# RUN apk add --no-cache git
# COPY entrypoint.sh /entrypoint.sh

# RUN apk add --update npm
# RUN git clone https://github.com/andxu/java-checkstyle /java-checkstyle
# RUN cd /java-checkstyle && git checkout develop && npm i
FROM andxu/javacheckstyle

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

FROM alpine as initializer
ENV WAVES_VERSION 0.8.12
RUN apk add --no-cache openssl curl && \
    curl -Lo /waves.jar "https://github.com/wavesplatform/Waves/releases/download/v${WAVES_VERSION}/waves-all-${WAVES_VERSION}.jar"

FROM openjdk:jre-alpine
WORKDIR /root
RUN mkdir conf
COPY --from=initializer /waves.jar waves.jar
EXPOSE 6869 6868 6886

FROM alpine AS alpine
WORKDIR /downloads
RUN wget https://github.com/google/cloudprober/releases/download/v0.11.2/cloudprober-v0.11.2-ubuntu-x86_64.zip \
        && unzip cloudprober-v0.11.2-ubuntu-x86_64.zip

FROM gcr.io/distroless/base-debian10
COPY --from=alpine /downloads/cloudprober-v0.11.2-ubuntu-x86_64/cloudprober /bin/
COPY ./cloudprober.cfg /etc/
EXPOSE 9313
ENTRYPOINT ["/bin/cloudprober", "--config_file", "/etc/cloudprober.cfg"]

FROM scratch
COPY sleep /
COPY print /
ENTRYPOINT ["/sleep"]
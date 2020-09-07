FROM scratch
COPY sleep /
COPY print /
#HEALTHCHECK CMD ["./print"] || exit 1
ENTRYPOINT ["/sleep"]

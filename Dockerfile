FROM alpine
ENTRYPOINT ["/bin/sh"]
CMD ["-c", "while true; do echo hello; sleep 1;done"]
FROM scratch

ADD dumpenv /dumpenv

ENTRYPOINT ["/dumpenv"]

# A 'dummy' pipeline image that simply
# executes the './execute' script (as non-root),
# expected in the 'current qworking directory'

FROM busybox:1.31.1
LABEL maintainer="Tim Dudgeon<tdudgeon@informaticsmatters.com>"

RUN adduser -D -h /home/pipeliner -s /bin/sh pipeliner
USER pipeliner
CMD "./execute"

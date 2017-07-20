FROM gliderlabs/alpine:3.3

LABEL name="Docker image for the Robot Framework http://robotframework.org/"
LABEL usage="docker run --rm -v $(pwd)/path/to/tests/:/path/to/tests/ -ti robot-docker robot --variable HOST:example.com --outputdir results path/to/tests/"

#Install Python Pip and the Robot framework
RUN apk-install bash py-pip firefox && \
    pip install --upgrade pip && \
    pip install robotframework robotframework-selenium2library selenium && \
    python --help

CMD ["robot"]
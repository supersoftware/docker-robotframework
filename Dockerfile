FROM gliderlabs/alpine:3.3

# Install Python Pip and the Robot framework
RUN apk-install bash py-pip firefox xvfb dbus chromium-chromedriver && \
    pip install --upgrade pip && \
    pip install robotframework robotframework-selenium2library selenium robotframework-xvfb && \
    python --version
    
ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
FROM python:3.7

RUN apt-get update \
        && apt-get install -y xdotool  \
        && rm -rf /var/lib/apt/lists/

RUN pip3 install virtualenv pylint anybadge pytest pytest-cov mypy Xlib

ENTRYPOINT /bin/bash

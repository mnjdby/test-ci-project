#!/bin/bash -ex

# Clone an example Python repo
# This step obviously won't be necessary if you're building a Python repo with LambCI,
# because you'll already be in the cloned repo directory
rm -rf /tmp/pendulum
git clone -b 2.0.3 --depth 1 https://github.com/sdispater/pendulum /tmp/pendulum
cd /tmp/pendulum


# You could just put this in your `cmd` config property
. ~/init/python && curl -sSL https://raw.githubusercontent.com/sdispater/poetry/0.11.4/get-poetry.py | python
pyenv rehash && poetry install -v && poetry build -v && poetry run pytest tests/ -W ignore

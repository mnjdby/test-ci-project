#!/bin/bash -ex

# Clone an example Ruby repo
# This step obviously won't be necessary if you're building a Ruby repo with LambCI,
# because you'll already be in the cloned repo directory
rm -rf /tmp/json
git clone --depth 1 https://github.com/flori/json /tmp/json
cd /tmp/json


# You could just put this in your `cmd` config property
. ~/init/ruby && bundle install && bundle exec rake

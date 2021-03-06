#!/bin/bash

# Copyright 2012:
#      Alex Russell <slightlyoff@chromium.org>
#
# Run it through uglify.

python post.py ../src/async-local-storage.js > ../bin/async-local-storage.min.js

python post.py ../third_party/DOMFuture/polyfill/src/Future.js \
               ../src/async-local-storage.js \
                  > ../bin/async-local-storage-with-Future.min.js

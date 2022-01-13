#!/bin/bash

cd x86_64
repo-add -n -R dni9-repo.db.tar.gz *.pkg.tar.zst
find . -type f -name "*.old" -delete

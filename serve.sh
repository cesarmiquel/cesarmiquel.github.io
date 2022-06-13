#!/bin/bash

LOG=/tmp/jekyll-blog.log

if [ -f "$LOG" ]; then
    rm -f "$LOG"
fi

export JEKYLL_VERSION=3.8
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish [::1]:4000:4000 \
  jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve >> "$LOG" &

#!/bin/bash

HUGO_BINARY=/usr/bin/hugo;
HUGO_HOME=/home/hugo;

for BLOG in $( ls $HUGO_HOME | grep '.blog$' ); do
    source $HUGO_HOME/$BLOG/server.conf;
    $HUGO_BINARY server \
        --theme="$THEME" \
        --port="$PORT" \
        --baseUrl="$BASEURL" \
        --buildDrafts="$BUILDDRAFTS" \
        --watch=true --appendPort=false --source=$HUGO_HOME/$BLOG &
done;

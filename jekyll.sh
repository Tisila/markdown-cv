#!/bin/bash
operation=$1
export JEKYLL_VERSION=3.8

if [[ $operation == "serve" ]]; then
    #echo "I will serve"

    docker run --rm \
      --volume="$PWD:/srv/jekyll" \
      -p 4000:4000 \
      -it jekyll/jekyll:$JEKYLL_VERSION \
      jekyll serve


elif [[ $operation == "build" ]]; then
    #echo "I will build"

    docker run --rm \
      --volume="$PWD:/srv/jekyll" \
      -it jekyll/jekyll:$JEKYLL_VERSION \
      jekyll build


elif [[ $operation == "clean" ]]; then
    #echo "I will build"

    docker run --rm \
      --volume="$PWD:/srv/jekyll" \
      -it jekyll/jekyll:$JEKYLL_VERSION \
      jekyll clean


elif [[ $operation == "interactive" ]]; then
    #echo "I will build"

    docker run --rm \
      --volume="$PWD:/srv/jekyll" \
      -it jekyll/jekyll:$JEKYLL_VERSION


else
    echo "I don't recognize that command"
fi

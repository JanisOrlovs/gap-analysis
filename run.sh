#!/bin/bash -xe

rm -rf dist/*  \
&& cp -f js/require_2_3_5/require.min.js dist/ \
&& cp -f favicon.png dist/ \
&& node build/r_2_3_5/r.js -o build/build.js \
&& node build/r_2_3_5/r.js -o cssIn=css/radar.css out=dist/main-built.css \
&& sudo docker build -t apache2 . \
&& sudo docker run -d --name cd-maturity-model -p 8082:80 apache2
echo "All Set, go to http://localhost:8082/"

# && sudo docker rm -f cd-maturity-model \
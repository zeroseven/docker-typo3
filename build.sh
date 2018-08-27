#!/bin/bash

docker build --pull . -f Dockerfile.php71-alpine -t zeroseven07/typo3:php71-alpine && docker run -it -v `pwd`/tests.sh:/tmp/test.sh --entrypoint "ash" zeroseven07/typo3:php71-alpine /tmp/test.sh && \
docker build --pull . -f Dockerfile.php72-alpine -t zeroseven07/typo3:php72-alpine && docker run -it -v `pwd`/tests.sh:/tmp/test.sh --entrypoint "ash" zeroseven07/typo3:php72-alpine /tmp/test.sh && \
docker build --pull . -f Dockerfile.php71 -t zeroseven07/typo3:php71 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/typo3:php71 /tmp/test.sh && \
docker build --pull . -f Dockerfile.php72 -t zeroseven07/typo3:php72 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/typo3:php72 /tmp/test.sh

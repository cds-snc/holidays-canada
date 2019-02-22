#!/bin/bash
version="$(xpath pom.xml //project/version/text\(\))"
artifactId="$(xpath pom.xml //project/artifactId/text\(\))"

docker build --build-arg FILENAME=$artifactId-$version -t cdssnc/cdn_holidays .

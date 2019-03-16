#!/bin/bash

artifactId="$(xpath pom.xml //project/artifactId/text\(\))"

docker build --build-arg ARTIFACT_ID=$artifactId -t cdssnc/holidays-canada .

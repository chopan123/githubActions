#!/bin/bash
# Make sure GITHUB_PAT is defined

curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -u "chopan123:$GITHUB_PAT" \
  https://api.github.com/repos/chopan123/githubActions/dispatches \
  -d '{"event_type":"build","client_payload":{"unit":false,"integration":true}}'

  # curl \
  #   -X POST \
  #   -H "Accept: application/vnd.github.v3+json" \
  #   -H "Authorization: token $GITHUB_PAT" \
  #   https://api.github.com/repos/chopan123/githubActions/dispatches \
  #   -d '{"event_type":"build","client_payload":{"unit":false,"integration":true}}'

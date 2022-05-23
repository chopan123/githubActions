#!/bin/bash

curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/chopan123/githubActions/dispatches \
  -d '{"event_type":"build","client_payload":{"unit":false,"integration":true}}'

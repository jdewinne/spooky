#!/bin/sh -l

/replicated $@ > license.json

cat license.json
LICENSE_ID=$(cat license.json | jq -r '.spec.licenseID')
echo "license-id=$LICENSE_ID"

echo "license-id=$LICENSE_ID" >> $GITHUB_OUTPUT

cat $GITHUB_OUTPUT
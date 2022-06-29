#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"
command=$(echo -n $INPUT_COMMAND)

echo "running the following commands:"
echo rancher login --token $token $url --context $context
echo rancher $command

rancher login --token $token $url --context $context && rancher $command
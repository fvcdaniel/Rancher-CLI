#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"
command="$INPUT_COMMAND"

echo $token
echo $context
echo $url
echo $command
echo $GITHUB_SHA

echo rancher login --token $token $url
echo rancher context switch $context
echo rancher $command

rancher login --token $token $url && rancher context switch $context && rancher $command
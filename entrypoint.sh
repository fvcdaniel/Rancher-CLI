#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"
command="$INPUT_COMMAND"


echo $token
echo $context
echo $url
echo $command

rancher login --token $token $url && \
rancher context switch $context && \
rancher $command
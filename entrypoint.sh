#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"

rancher login --token $token $url
rancher context switch $context
rancher $*

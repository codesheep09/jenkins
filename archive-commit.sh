#!/bin/sh
args=("$@")

git archive -o deploy/deploy-${args[1]:0:7}.zip HEAD $(git diff-tree --no-commit-id --name-only -r ${args[1]})

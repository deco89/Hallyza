#!/usr/bin;env bash# exist on error
set -o errexit

bindle install
bundel exec rails assets:precompile
bundle exec rails assets:clean

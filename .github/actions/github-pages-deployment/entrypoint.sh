#!/bin/sh -l

# echo "REPO: $1"  # TODO remove?
# echo "TOKEN: $2"  # TODO remove?
# echo "REPO: $REPO"  # TODO remove?
# echo "TOKEN: $TOKEN"  # TODO remove?

# Login
echo "# Login"
echo "TOKEN: $TOKEN"  # TODO remove!
if [ -n "$TOKEN" ]  # i.e. test if TOKEN is not empty
then
  echo "## Login token"
  # TODO recover user login.
  echo "GITHUB_ACTOR: $GITHUB_ACTOR"  # TODO remove?
  # TODO display info.
  echo "Authenticated as $GITHUB_ACTOR"  # TODO remove?
  # TODO check if token scope is sufficient?
else
  echo "## Setup deploy key"
  exit 1  # TODO correct!
fi

# Setup
echo "# Setup"
echo "GITHUB_WORKSPACE: $GITHUB_WORKSPACE"  # TODO remove!
echo "LOCAL_DIRECTORY: $LOCAL_DIRECTORY"  # TODO remove!
SOURCE_DIRECTORY=$LOCAL_DIRECTORY  # TODO correct!
echo "The source directory for deployment is $SOURCE_DIRECTORY"
exit 1  # TODO correct!

# Prepare
echo "# Prepare"
# TODO complete!

# Deploy
echo "# Deploy"
# TODO complete!

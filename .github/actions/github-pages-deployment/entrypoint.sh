#!/bin/sh -l

# Display default environment variables
echo "HOME: $HOME"  # TODO remove!
echo "GIHTUB_WORKFLOW: $GITHUB_WORKFLOW"  # TODO remove!
echo "GITHUB_RUN_ID: $GITHUB_RUN_ID"  # TODO remove!
echo "GITHUB_RUN_NUMBER: $GITHUB_RUN_NUMBER"  # TODO remove!
echo "GITHUB_ACTION: $GITHUB_ACTION"  # TODO remove!
echo "GITHUB_ACTIONS: $GITHUB_ACTIONS"  # TODO remove!
echo "GITHUB_ACTOR: $GITHUB_ACTOR"  # TODO remove!
echo "GITHUB_REPOSITORY: $GITHUB_REPOSITORY"  # TODO remove!
echo "GITHUB_EVENT_NAME: $GITHUB_EVENT_NAME"  # TODO remove!
echo "GITHUB_WORKSPACE: $GITHUB_WORKSPACE"  # TODO remove!
echo "GITHUB_SHA: $GITHUB_SHA"  # TODO remove!
echo "GITHUB_REF: $GITHUB_REF"  # TODO remove!
echo "GITHUB_HEAD_REF: $GITHUB_HEAD_REF"  # TODO remove!
echo "GITHUB_BASE_REF: $GITHUB_BASE_REF"  # TODO remove!
echo "GITHUB_TOKEN: $GITHUB_TOKEN"  # TODO remove!

# Display custom environment variables
echo "REPO: $REPO"  # TODO remove!
echo "TOKEN: $TOKEN"  # TODO remove!
echo "LOCAL_DIRECTORY: $LOCAL_DIRECTORY"  # TODO remove!
echo "NAME: $NAME"  # TODO remove!
echo "EMAIL: $EMAIL"  # TODO remove!

# Miscellaneous
echo "PWD: $(pwd)"  # TODO remove!
echo "LS: $(ls)"  # TODO remove!


# Login
echo "# Login"
if [ -n "$TOKEN" ]  # i.e. test if not empty
then
  echo "## Login token"
  USER_LOGIN="$GITHUB_ACTOR"  # TODO correct?
  echo "Authenticated as $USER_LOGIN"
  # TODO check if token scope is sufficient?
else
  echo "## Setup deploy key"
  exit 1  # TODO correct!
fi

# Setup
echo "# Setup"
SOURCE_DIRECTORY=$(realpath "$GITHUB_WORKSPACE/$LOCAL_DIRECTORY")  # TODO correct?
echo "The source directory for deployment is $SOURCE_DIRECTORY"
# TODO commiter from GitHub Pages?
# TODO git config.
if [ -n "$NAME" ]  # i.e. test if not empty
then
  NAME="$GITHUB_ACTOR"  # TODO correct?
fi
if [ -n "$EMAIL" ]  # i.e. test if not empty
then
  EMAIL="TODO"  # TODO correct!
fi
echo "Configuring git committer to be $NAME <$EMAIL>"
exit 1  # TODO correct!

# Prepare
echo "# Prepare"
exit 1  # TODO correct!

# Deploy
echo "# Deploy"
exit 1  # TODO correct!

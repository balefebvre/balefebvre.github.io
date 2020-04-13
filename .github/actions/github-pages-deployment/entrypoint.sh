#!/bin/sh -l

# TODO remove the following lines!
# Display default environment variables
echo "# Display default environment variables"
echo "HOME: $HOME"
echo "GIHTUB_WORKFLOW: $GITHUB_WORKFLOW"
echo "GITHUB_RUN_ID: $GITHUB_RUN_ID"
echo "GITHUB_RUN_NUMBER: $GITHUB_RUN_NUMBER"
echo "GITHUB_ACTION: $GITHUB_ACTION"
echo "GITHUB_ACTIONS: $GITHUB_ACTIONS"
echo "GITHUB_ACTOR: $GITHUB_ACTOR"
echo "GITHUB_REPOSITORY: $GITHUB_REPOSITORY"
echo "GITHUB_EVENT_NAME: $GITHUB_EVENT_NAME"
echo "GITHUB_WORKSPACE: $GITHUB_WORKSPACE"
echo "GITHUB_SHA: $GITHUB_SHA"
echo "GITHUB_REF: $GITHUB_REF"
echo "GITHUB_HEAD_REF: $GITHUB_HEAD_REF"
echo "GITHUB_BASE_REF: $GITHUB_BASE_REF"

# TODO remove the following lines!
# Display custom environment variables
echo "REPO: $REPO"
echo "TOKEN: $TOKEN"
echo "LOCAL_DIRECTORY: $LOCAL_DIRECTORY"
echo "NAME: $NAME"
echo "EMAIL: $EMAIL"

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
if [ -z "$NAME" ]  # i.e. test if empty
then
  NAME="$GITHUB_ACTOR"  # TODO correct?
fi
if [ -z "$EMAIL" ]  # i.e. test if empty
then
  EMAIL="TODO"  # TODO correct!
  USER_NAME="balefebvre"
  curl --request GET --url "https://api.github.com/users" --header "Accept: application/vnd.github.v3+json" --header "Authorization: Bearer $TOKEN" --header "Content-type: application/json"
  curl --request GET --url "https://api.github.com/users/$USER_NAME" --header "Accept: application/vnd.github.v3+json" --header "Authorization: Bearer $TOKEN" --header "Content-type: application/json"
fi
echo "Configuring git committer to be $NAME <$EMAIL>"
exit 1  # TODO correct!

# Prepare
echo "# Prepare"
exit 1  # TODO correct!

# Deploy
echo "# Deploy"
exit 1  # TODO correct!

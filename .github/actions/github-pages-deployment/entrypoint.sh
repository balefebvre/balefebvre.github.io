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
echo "TEMPORARY_DIRECTORY: $TEMPORARY_DIRECTORY"

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
  # USER_NAME="balefebvre"
  # curl --request GET --url "https://api.github.com/users" --header "Accept: application/vnd.github.v3+json" --header "Authorization: Bearer $TOKEN" --header "Content-type: application/json"
  # curl --request GET --url "https://api.github.com/users/$USER_NAME" --header "Accept: application/vnd.github.v3+json" --header "Authorization: Bearer $TOKEN" --header "Content-type: application/json"
fi
echo "Configuring git committer to be $NAME <$EMAIL>"

# Prepare
echo "# Prepare"
TARGET_BRANCH="master"  # TODO correct!
URL="github.com"  # TODO correct!
KEEP_HISTORY=""  # TODO correct!
WORK_DIRECTORY="$TEMPORARY_DIRECTORY"  # TODO correct!
echo "Deploying branch $TARGET_BRANCH to $URL"
if [ -n "$KEEP_HISTORY" ]  # i.e. test if not empty
then
  echo "The deployment is configured to preserve the target branch if it exists on remote."
fi
echo "Using temporary work directory $WORK_DIRECTORY"
cd "$WORK_DIRECTORY"
pwd  # TODO remove!

## Deploy
#echo "# Deploy"
## TODO git clone.
## TODO git init.
#echo "Initializing local git repository."
#git init .
## TODO copy files.
#echo "Copying $SOURCE_DIRECTORY contents to $WORK_DIRECTORY."
#rsync -rl --exclude ".git" --delete "$SOURCE_DIRECTORY/" .
## TODO ...
## TODO git config.
#echo "Configuring git committer to be $NAME <$EMAIL>."
#git config user.name "$NAME"
#git config user.email "$EMAIL"
## TODO git commit.
#echo "Preparing to deploy $TARGET_BRANCH branch to GitHub Pages"
## # TODO git commit hook!
## # TODO deployment file!
## # TODO cname!
#git add -A .
#ALLOW_EMPTY_COMMIT=""  # TODO correct!
#if [ -z "$ALLOW_EMPTY_COMMIT" ]  # i.e. test if empty
#then
#  GIT_COMMIT_OPTS=""
#else
#  GIT_COMMIT_OPTS="--allow-empty"
#fi
#COMMIT_MESSAGE="Deploy $PROJECT_NAME to $URL:$TARGET_BRANCH"  # TODO correct!
#if [ -n "$COMMIT_MESSAGE" ]  # i.e. test if not empty
#then
#  GIT_COMMIT_MSG_OPTS="-m \"$COMMIT_MESSAGE\""
#else
#  exit 1  # TODO correct!
#fi
#git commit $GIT_COMMIT_OPTS -q $GIT_COMMIT_MSG_OPTS
## TODO git push.
#echo "Pushing to $URL."
## git push $GIT_PUSH_OPTS --quiet "$REMOTE_URL" "$TARGET_BRANCH":"$TARGET_BRANCH" > /dev/null 2>&1
## TODO git status.
#VERBOSE=""
#if [ -n "$VERBOSE" ]  # i.e. test if not empty
#  git status
#else
#  git status  # TODO remove?
#fi

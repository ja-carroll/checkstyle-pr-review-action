#!/bin/sh

echo "Running the pr review tool"

cd "${GITHUB_WORKSPACE}" || exit 1

export FILE_PATH="${INPUT_FILEPATH}"
export CHECKSTYLE_GITHUB_API_TOKEN="${INPUT_GITHUB_TOKEN}"

if [[ -z "$FILE_PATH" ]]; then
  echo "Error: FILE_PATH is not set."
  exit 1
fi

if [[! -f "$FILE_PATH" ]]; then
  echo "Error: File not found at $FILE_PATH."
  exit 1
fi

exec checkstyle-pr-review -xmlPath ${FILE_PATH}

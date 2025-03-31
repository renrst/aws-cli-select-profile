#!/bin/bash

SELECTED_PROFILE=$(cat ~/.aws/config | grep profile |  tr -d '[]' | cut -d' ' -f2  | fzf --height="40%" --reverse)

if [ $? -ne 0 ]; then
  echo "no profile selected"
else
  echo "export AWS_PROFILE=$SELECTED_PROFILE"
  export AWS_PROFILE=$SELECTED_PROFILE
  aws s3 ls 2>/dev/null 1>/dev/null
  if [[ $? -ne 0 ]]; then
    echo "need to perform login"
    aws sso login
  fi
fi


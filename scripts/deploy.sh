#! /usr/bin/env bash

email=$LABORATORIA_API_EMAIL
pass=$LABORATORIA_API_PASS


if [[ -z "$email" ]] || [[ -z "$pass" ]]; then
  echo "Missing API credentials!"
  exit 1;
fi


if [[ "$TRAVIS_BRANCH" == "v2.x" ]]; then
  apiBaseUrl="https://laboratoria-la-staging.firebaseapp.com"
elif [[ "${TRAVIS_TAG}" == v* ]]; then
  apiBaseUrl="https://api.laboratoria.la"
elif [[ ! -z "$LABORATORIA_API_URL" ]]; then
  apiBaseUrl="$LABORATORIA_API_URL"
else
  echo "ignoring branch ${TRAVIS_BRANCH}..."
  exit 0
fi


version=$( node -e "console.log(require('./package.json').version)" )

if [[ "$?" != "0" ]] || [[ -z "$version" ]]; then
  echo "Could not read version from package.json!"
  exit 1;
fi


echo "Publishing version ${version} to: ${apiBaseUrl}..."
echo ""


# Run build to generate projects and topics JSON files
yarn build

if [[ "$?" != "0" ]]; then
  echo "Build script failed!"
  exit "$?"
fi


# Get auth token from API
echo "Getting auth token from laboratoria API..."
result=$(
  curl -s \
    -X POST \
    -H 'content-type: application/json' \
    -d "{\"email\":\"${email}\",\"password\":\"${pass}\"}" \
    "${apiBaseUrl}/auth"
)

statusCode=$( node -e "console.log((${result}).statusCode || 200)" )
token=$( node -e "console.log((${result}).token || '')" )

if [[ "$?" != "0" ]] || [[ "$statusCode" != "200" ]] || [[ -z "$token" ]]; then
  echo "Could not get auth token from ${apiBaseUrl}!"
  exit 1;
fi


hasFailures=0


# Push projects to API
for file in `ls build/projects`; do
  key=${file:3:-5}
  echo "Publishing project ${key}..."
  result=$(
    curl -s \
      -X POST \
      -H 'content-type: application/json' \
      -H "authorization: Bearer ${token}" \
      --data-binary "@build/projects/${file}" \
      "${apiBaseUrl}/projects"
  )

  statusCode=$( node -e "console.log((${result}).statusCode || 200)" )

  if [[ "$?" != "0" ]]; then
    hasFailures=1
    echo "Failed running curl command"
  elif [[ "$statusCode" != "200" ]]; then
    hasFailures=1
    message=$( node -e "console.log((${result}).message || '')" )
    echo "Failed (HTTP Status: ${statusCode}): ${message}"
  else
    echo "OK"
  fi
done

# Push topics to API??

exit "$hasFailures"

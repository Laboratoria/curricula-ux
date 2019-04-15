#! /usr/bin/env bash

parser='./node_modules/curriculum-parser/index.js'

projects=(
  '01-e-commerce'
  '02-financial-app'
  '03-company'
  '04-user-interface'
  '05-service-design'
  '06-design-sprint'
# '07-silicon-valley'
)

topics=(
  '00-intro-ux'
  '01-user-research'
  '89-talent-fest'
  '90-prototyping'
  '91-technology'
# '92-ui-components'
  '94-product-design'
  '96-content-creation'
  '97-user-understanding'
  '98-business-challenge'
#  '99-herramientas'
)

repo=$( node -e "console.log(require('./package.json').repository)" )
version=$( node -e "console.log(require('./package.json').version)" )
rubricVersion=$( node -e "console.log(require('rubric').version)" )

hasFailures=0

if [[ "$1" == "--validate" ]]; then
  validate=1
else
  validate=0
fi


buildProjects() {
  echo "Building projects..."
  for project in ${projects[@]}; do
    echo "projects/${project}"
    if [[ "$validate" == "0" ]]; then
      dest="build/projects/${project}.json"
    else
      dest="/dev/null"
    fi
    ${parser} project 03-projects/${project} \
      --repo ${repo} \
      --version ${version} \
      --rubric ${rubricVersion} \
      --track js \
      --locale es-ES \
      > "${dest}"

    if [[ "$?" != "0" ]]; then
      hasFailures=1
      echo "Failed"
    else
      echo "OK"
    fi
  done
}


buildTopics() {
  echo "Building topics..."
  for topic in ${topics[@]}; do
    echo "topics/${topic}"
    if [[ "$validate" == "0" ]]; then
      dest="build/topics/${topic}.json"
    else
      dest="/dev/null"
    fi
    ${parser} topic 00-topics/${topic} \
      --repo ${repo} \
      --version ${version} \
      --track js \
      --locale es-ES \
      > "${dest}"

    if [[ "$?" != "0" ]]; then
      hasFailures=1
      echo "Failed"
    else
      echo "OK"
    fi
  done
}


if [[ "$validate" == "0" ]]; then
  rm -rf build/*
  mkdir -p build/projects
  mkdir -p build/topics
else
  echo "Dry run... (validation only)"
fi

buildProjects
# buildTopics

exit "$hasFailures"

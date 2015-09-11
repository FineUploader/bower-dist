#!/bin/bash

set -e

# usage color "31;5" "string"
# 0 default
# 5 blink, 1 strong, 4 underlined
# fg: 31 red,  32 green, 33 yellow, 34 blue, 35 purple, 36 cyan, 37 white
# bg: 40 black, 41 red, 44 blue, 45 purple
e() {
    printf '\033[%sm%s\033[m\n' "$@"
}

if [ -z $1 ]; then
	e '32;5' 'Please specify Fine-uploader version'
	e '32;5' 'Example: ./build.sh 5.1.3'
	exit;
fi

version=$1

e '32;5' 'Clean up dist folder'
rm -rf dist/*

e '32;5' 'Entering FineUploader/fine-uploader src directory'
cd src

e '32;5' "Check out version $version"
git pull origin && \
git checkout -b "v${version}" $version

if [ -d 'node_modules' ]; then
	rm -rf node_modules;
fi

e '32;5' 'Installing dependencies'
npm install;

e '32;5' 'Build FineUploader/fine-uploader'
grunt build_stripped

e '32;5' 'Copying build files'
cp -rf _build/* ../dist/
cp -rf client/html/templates/ ../dist/templates
cp  LICENSE ../dist/

e '32;5' 'Back to master branch'
git checkout master && \
git branch -D "v${version}"

e '32;5' 'Update version number'
cd ..
sed -i -e "s/[0-9].[0-9].[0-9]/${version}/" bower.json
sed -i -e "s/[0-9].[0-9].[0-9]/${version}/" README.md

msg="Bump v${version}"
e '32;5' "${msg}"
git add -A && \
git commit -am "${msg}" && \
git tag -s $version -m "${msg}"

e '32;5' 'Done!'

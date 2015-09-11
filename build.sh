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
	e '31;5' 'Please specify Fine-uploader version you want to build.'
	e '31;5' 'Example: ./build.sh 5.3.0'
	e '31;5' '    See: https://github.com/FineUploader/fine-uploader/releases'
	exit;
fi

version=$1
cmt_msg="Bump v${version}"

e '33;5' 'Entering FineUploader/fine-uploader src directory'
cd src
git checkout -qf master

if [ -f 'npm-debug.log' ]; then
	e '33;5' "Seems you've got an error in previous build"
	rm npm-debug.log
	git branch -qD "v${version}"
fi

e '33;5' "Check out version $version"
git pull -q origin && \
git checkout -qb "v${version}" $version

if [[ $2 == '--reinstall-dep' ]]; then
	e '33;5' 'Removing existing node_modules dir'
	rm -rf node_modules;
fi

if [ ! -d 'node_modules' ]; then
	e '33;5' 'Installing dependencies'
	npm install --quiet;
fi

e '33;5' 'Build FineUploader/fine-uploader'
grunt build_stripped

e '33;5' 'Clean up dist folder'
rm -rf ../dist/*

e '33;5' 'Copying build files'
cp -rf _build/* ../dist/
cp -rf client/html/templates/ ../dist/templates
cp  LICENSE ../dist/

e '33;5' 'Back to master branch'
git checkout master && \
git branch -D "v${version}"

e '33;5' 'Update version number'
cd ..
sed -i -e "s/[0-9].[0-9].[0-9]/${version}/" bower.json
sed -i -e "s/[0-9].[0-9].[0-9]/${version}/" README.md
sed -i -e "s/[0-9].[0-9].[0-9]/${version}/" build.sh

e '33;5' "${cmt_msg}"
git add -qA && \
git commit -qam "${cmt_msg}"

if [[ $2 = '--release-tag' ]] || [[ $3 = '--release-tag' ]]; then
	git tag -s $version -m "${cmt_msg}"
fi

e '32;5' 'Done!'

#!/bin/bash

if [ -z $1 ]; then
	echo 'Please specify Fine-uploader version'
	echo 'Example: ./build.sh 5.1.3'
	exit;
fi

version=$1

echo 'Clean up dist folder'
rm -rf dist/*

echo 'Entering src directory'
cd src

echo 'Check out Widen/Fine-uploader version'
git checkout -b "v${version}" $version

if [ ! -d 'node_modules' ]; then
	echo 'Installing Widen/Fine-uploader dependencies'
	npm install;
fi

echo 'Build Widen/Fine-uploader'
grunt build_stripped

echo 'Copying build files'
cp -rf _build/* ../dist/
git checkout master && git branch -D "v${version}"

echo 'Update version number'
cd ..
sed -i -e "s/[0-9].[0-9].[0-9]/${version}/" *.json

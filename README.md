[![Fine Uploader](http://fineuploader.com/img/FineUploader_logo.png)](http://fineuploader.com)
![Bower](https://img.shields.io/bower/v/fineuploader-dist.svg?style=flat-square)

## [UNOFFICIAL] [Bower](http://bower.io) distribution build of [FineUploader](http://fineuploader.com)

[![Gratipay](https://img.shields.io/gratipay/feryardiant.svg?style=flat-square)](https://gratipay.com/feryardiant)

### DISCLAIMER

1. This repo is **ONLY** provide distribution copy from the original FineUploader build.
2. This repo **DOES NOT** provide any customization of FineUploader.
3. See [License](#license) section.

### Usage

```bash
bower install fineuploader-dist --save
```

Link the necessary javascript files into your page.

```html
<script src="/bower_components/fineuploader-dist/dist/fineuploader.min.js"></script>
<link href="/bower_components/fineuploader-dist/dist/fineuploader.min.css" type="text/css">
```

__Enjoy__

----

### Updating or building manually

Currently the build is for fine-uploader `v5.8.0`.
You can build yourself by doing the following

### Prepping (getting fine-uploader)

```bash
$ git clone --recursive https://github.com/feryardiant/fineuploader-dist.git
```

OR, if you already cloned this repo;

```bash
$ cd fineuploader-dist
$ git pull origin
```

### Building

In your terminal please navigate to where the project is cloned

```bash
$ ./build.sh <version> # e.g: ./build.sh 5.8.0
```

**NOTE:**

- The build will automaticaly install node dependencies if node_modules dir is not exist.
- Somehow you want to reinstall the dependencies. use `--reinstall-dep` to remove existing `node_modules` directory then reinstall the them.

	```bash
	$ ./build.sh <version> --reinstall-dep
	```

### License

Fine Uploader is a code library maintained and developed by [Widen Enterprises, Inc.](http://www.widen.com/) and made available under the [Widen Commercial license](dist/LICENSE).  If you are using Fine Uploader for commercial purposes,
you must [purchase a license](http://fineuploader.com/purchase).

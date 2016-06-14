[![Fine Uploader](http://fineuploader.com/img/FineUploader_logo.png)](http://fineuploader.com)
![Bower](https://img.shields.io/bower/v/fineuploader-dist.svg?style=flat-square)

![Bower](https://img.shields.io/bower/v/fineuploader-dist.svg?style=flat-square)
[![license](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](LICENSE)
[![Freenode](https://img.shields.io/badge/chat-on%20freenode-brightgreen.svg?style=flat-square)](irc://chat.freenode.net/#fineuploader)

[**Documentation**](http://docs.fineuploader.com) |
[**Examples**](http://fineuploader.com/demos) |
[**Support**](http://fineuploader.com/support.html) |
[**Blog**](http://blog.fineuploader.com/) |
[**Changelog**](http://blog.fineuploader.com/category/changelog/)

---

## [Bower](http://bower.io) distribution build of [FineUploader](http://fineuploader.com)

### DISCLAIMER

1. This repo is **ONLY** provide distribution copy from the original FineUploader build.
2. This repo **DOES NOT** provide any customization of FineUploader.

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

Currently the build is for fine-uploader `v5.8.0`. You can build yourself by doing the following

### Prepping (getting fine-uploader)

```bash
$ git clone --recursive https://github.com/FineUploader/bower-dist.git
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
- Somehow you want to reinstall the dependencies. Use `--reinstall-dep` to remove existing `node_modules` directory then reinstall the them.

	```bash
	$ ./build.sh <version> --reinstall-dep
	```

### Credits

* [Fery Wardiyanto](https://github.com/feryardiant) as original author of this distribution. [Buy him a coffee](https://gratipay.com/~feryardiant/).
* *Fine Uploader is a code library sponsored by [Widen Enterprises, Inc.](http://www.widen.com/)*

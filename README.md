## A bower distribution build for [FineUploader/fine-uploader](https://github.com/FineUploader/fine-uploader)

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

---

### Updating or building manually

Currently the build is for fine-uploader `v5.3.0`.
You can build yourself by doing the following

##### Prepping (getting fine-uploader)

```bash
$ git clone --recursive https://github.com/feryardiant/fineuploader-dist.git
```

OR, if you already cloned this repo;

```bash
$ cd fineuploader-dist
$ git submodule foreach git pull origin
```

##### Building

1. In your terminal please navigate to where the project is cloned

	```bash
	$ ./build.sh <version> # e.g: ./build.sh 5.3.0
	```

	**NOTE:**

	- The build will automaticaly install node dependencies if node_modules dir is not exist, otherwise it will update it.
	- If you don't want to update it' dependencies, use `--keep-dep`.

		```bash
		$ ./build.sh <version> --keep-dep
		```
	- Somehow I face an error while update the node dependencies and the only way to fix it is reinstall them. use `--reinstall-dep` to remove existing `node_modules` directory then reinstall the dependencies.

		```bash
		$ ./build.sh <version> --reinstall-dep
		```

2. You should now see these files within the `dist` directory

	```
	dist/
	├── placeholders
	│   ├── not_available-generic.png
	│   └── waiting-generic.png
	├── templates
	│   ├── default.html
	│   ├── gallery.html
	│   └── simple-thumbnails.html
	├── all.fine-uploader.js
	├── all.fine-uploader.min.js
	├── azure.fine-uploader.js
	├── azure.fine-uploader.min.js
	├── azure.jquery.fine-uploader.js
	├── azure.jquery.fine-uploader.min.js
	├── continue.gif
	├── edit.gif
	├── fine-uploader.css
	├── fine-uploader-gallery.css
	├── fine-uploader-gallery.min.css
	├── fine-uploader.js
	├── fine-uploader.min.css
	├── fine-uploader.min.js
	├── fine-uploader-new.css
	├── fine-uploader-new.min.css
	├── jquery.fine-uploader.js
	├── jquery.fine-uploader.min.js
	├── LICENSE
	├── loading.gif
	├── pause.gif
	├── processing.gif
	├── retry.gif
	├── s3.fine-uploader.js
	├── s3.fine-uploader.min.js
	├── s3.jquery.fine-uploader.js
	├── s3.jquery.fine-uploader.min.js
	└── trash.gif
	```

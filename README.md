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

Currently the build is for fine-uploader `v5.2.2`.
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

> In your terminal please navigate to where the project is cloned

```bash
$ cd fineuploader-dist/src
$ npm install    # I don't thinks it's a best idea but, you need to do this in order to install all of fine-uploader dependencies (let me know if you have better one)
$ cd ..          # when all done, get back to the root directory
$ ./build.sh <version> # e.g: ./build.sh 5.2.2
```

> You should now see these files within the `dist` directory

```
dist
├── placeholders
│   ├── not_available-generic.png
│   └── waiting-generic.png
├── templates
│   ├── default.html
│   └── simple-thumbnails.html
├── all.fine-uploader.js
├── all.fine-uploader.min.js
├── azure.fine-uploader.js
├── azure.fine-uploader.min.js
├── azure.jquery.fine-uploader.js
├── azure.jquery.fine-uploader.min.js
├── edit.gif
├── fine-uploader.css
├── fine-uploader.js
├── fine-uploader.min.css
├── fine-uploader.min.js
├── jquery.fine-uploader.js
├── jquery.fine-uploader.min.js
├── LICENSE
├── loading.gif
├── processing.gif
├── s3.fine-uploader.js
├── s3.fine-uploader.min.js
├── s3.jquery.fine-uploader.js
├── s3.jquery.fine-uploader.min.js
```

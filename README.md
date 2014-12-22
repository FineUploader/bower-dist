## A bower distribution build for [Widen/fine-uploader](https://github.com/Widen/fine-uploader)

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

Currently the build is for fine-uploader `v5.0.9`.
You can build yourself by doing the following

##### Prepping (getting fine-uploader)

```bash
$ git clone https://github.com/feryardiant/fineuploader-dist.git
& cd fineuploader-dist
$ git submodule init
$ git submodule update
```

OR, if you already cloned this repo;

```bash
$ cd fineuploader-dist
$ git submodule foreach git pull origin
```

##### Building

> In your terminal please navigate to where the project is cloned

```bash
$ cd fineuploader-dist
$ npm install
$ cd src
$ npm install    # I don't thinks it's a best idea but, you need to do this in order to install all of fine-uploader dependencies (let me know if you have better one)
$ cd ..          # when all done, get back to the root directory
$ grunt
```

> You should now see these files within the `dist` directory

```
dist
├─ placeholders
│   ├─ not_available-generic.png
│   └─ waiting-generic.png
├─ all.fineuploader.js
├─ all.fineuploader.min.js
├─ azure.fineuploader.js
├─ azure.fineuploader.min.js
├─ azure.jquery.fineuploader.js
├─ azure.jquery.fineuploader.min.js
├─ edit.gif
├─ fineuploader.css
├─ fineuploader.js
├─ fineuploader.min.css
├─ fineuploader.min.js
├─ jquery.fineuploader.js
├─ jquery.fineuploader.min.js
├─ loading.gif
├─ processing.gif
├─ s3.fineuploader.js
├─ s3.fineuploader.min.js
├─ s3.jquery.fineuploader.js
└─ s3.jquery.fineuploader.min.js
```

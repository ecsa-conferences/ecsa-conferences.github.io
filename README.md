# European Conference on Software Architecture (ECSA) Series

This repository contains the website of the ECSA series.

The ECSA series website is inspired by the [ICSA series](https://icsa-conferences.org/series/history/) website.

## Editing the content

The website pages are in the `_pages/` folder. Some content is automatically generated based on the list of conference editions. To add or edit information about ECSA editions, edit the file `_data/editions.json`.

## Editing the style

The website style is implemented as page templates in the `_layouts/` folder and partial templates in the `_includes/` folder.

The websites uses [Tailwind CSS](https://tailwindcss.com/). Thus, if you modify CSS classes style, you may need to rebuild the stylesheet. See the [Pre-built artifacts](#pre-built-artifacts) section below.

If you are editing the style, you probably want to test the changes locally before committing them. See the [Development environment](#development-environment) section below.

## Development environment

This is a Jekyll website. If you know your way around Jekyll, you know what to do to serve the it locally. If you don't, the simplest way is to:
1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/).
1. Start Docker Desktop.
1. Start Jekyll container in the root directory of the project:
   - Linux/Mac
     ```bash
     bash docker-jekyll.sh
     ```
     
     or

     ```bash
     docker run --rm \
      -p 0.0.0.0:4000:4000 \
      --hostname=jekyll \
      --name=jekyll \
      -v $PWD:/srv/jekyll \
      -v $PWD/.jekyll-cache:/usr/local/bundle \
      -v $PWD/_site:/srv/jekyll/build \
      -e 'TZ=Europe/Amsterdam' \
      -e JEKYLL_UID=$(id -u) \
      -e JEKYLL_GID=$(id -g) \
      jekyll/jekyll \
      jekyll serve --source /srv/jekyll \
      --destination /srv/jekyll/build \
      --watch \
      --force_polling
     ```
   - Windows PowerShell
     ```ps1
     .\docker-jekyll.ps1
     ```

     or

     ```ps1
     docker run --rm `
      -p 0.0.0.0:4000:4000 `
      --hostname=jekyll `
      --name=jekyll `
      -v ${PWD}:/srv/jekyll `
      -v ${PWD}/.jekyll-cache:/usr/local/bundle `
      -v ${PWD}/_site:/srv/jekyll/build `
      -e 'TZ=Europe/Amsterdam' `
      -e JEKYLL_UID=1000 `
      -e JEKYLL_GID=1000 `
      jekyll/jekyll `
      jekyll serve --source /srv/jekyll --destination /srv/jekyll/build --watch --force_polling
     ```
1. Open the website in your browser at http://localhost:4000.

## Pre-built artifacts

The style and vendor scripts are pre-built and committed to the repository. If you want to rebuild them (especially if you use new tailwind classes), you need to have [Node.js](https://nodejs.org/en/) and [npm](https://www.npmjs.com/) installed. Then, run the following commands in the root directory of the project:

```bash
npm install
npm run tailwind-build
```

or (if you have [Make](https://www.gnu.org/software/make/) installed):

```bash
make
```

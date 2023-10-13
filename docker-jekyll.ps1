$IDu=1000
$IDg=1000

docker run --rm `
 -p 0.0.0.0:4000:4000 `
 --hostname=jekyll `
 --name=jekyll `
 -v ${PWD}:/srv/jekyll `
 -v ${PWD}/.jekyll-cache:/usr/local/bundle `
 -v ${PWD}/_site:/srv/jekyll/build `
 -e 'TZ=Europe/Amsterdam' `
 -e JEKYLL_UID=$IDu `
 -e JEKYLL_GID=$IDg `
 jekyll/jekyll `
 jekyll serve --source /srv/jekyll --destination /srv/jekyll/build --watch --force_polling

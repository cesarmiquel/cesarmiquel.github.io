# README

## Installing Jekyll

To avoid installing Ruby and Gems and Bundler and all the other Jekyll requirements I'm using a Docker container: [envygeeks/jekyll-docker](https://github.com/envygeeks/jekyll-docker). Work great!

To have a local version working just do:

```
export JEKYLL_VERSION=3.8
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish [::1]:4000:4000 \
  jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve
```
I have a bash script with that code:
```
$ ./serve.sh
```
And open your browser on `http://localhost:4000/`. Thats it!


## Notes

- **Post format** my nameing convention for posts is _posts/YYYY-MM-DD-week-WW-md where WW is the [ISO week](https://en.wikipedia.org/wiki/ISO_week_date). You can find on that page the the current month and ISO week or use `date +%W` to print it. WW goes from 01-52 (or 53) depending on the year. To generate the filename I do: $ echo `date +_posts/%Y-%m-%d-week-%W.md`

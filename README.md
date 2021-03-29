# README

This is my site. To test locally:

```
$ jekyll s
```

You need to have Jekyll version 3.8.5 (which is the supported version used in Github pages) installed. You can install via `gem install jekyll -v 3.8.5`.

When moving from by Dropbox/Blog to here you need to run:

```
$ sed -ie 's/imgs\//\/assets\/imgs\//g' _posts/<post>
```

To update URLs

## Notes

- **Post format** my nameing convention for posts is _posts/YYYY-MM-DD-week-WW-md where WW is the [ISO week](https://en.wikipedia.org/wiki/ISO_week_date). You can find on that page the the current month and ISO week or use `date +%W` to print it. WW goes from 01-52 (or 53) depending on the year.

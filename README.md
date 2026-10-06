# nahidhasan07.github.io

Personal academic website, built on the [academicpages](https://github.com/academicpages/academicpages.github.io) Jekyll theme and hosted on GitHub Pages at [nahidhasan07.github.io](https://nahidhasan07.github.io).

## Structure

The live site currently has four pages: **About**, **Publications**, **Projects**, and **CV**. The theme also supports Talks/Teaching tabs, but those are gitignored for now (see below) until there's content for them.

```
_pages/            Static pages — one file per tab
  about.md           Home ("/")
  publications.html  Publications tab (lists _publications/)
  projects.html       Projects tab (lists _projects/)
  cv.md                CV tab

_publications/     One markdown file per publication
_projects/         One markdown file per project

_data/
  navigation.yml   Controls which tabs show up in the header, and their order
  authors.yml      Optional multi-author info (only needed for blog posts)

files/             All .bib and .pdf files (papers, slides) go here
images/            All images (favicons + profile photo)

markdown_generator/  Scripts/notebooks to bulk-generate _publications
                      markdown files from a .bib/.csv file, instead of
                      writing each one by hand

_config.yml        Site title, author bio/social links, theme settings
```

**Not currently tracked** (gitignored — theme supports them, but unused for now): `_talks/`, `_teaching/`, their `_pages/*.html` listing pages, and the talks-specific `markdown_generator` scripts. Remove the relevant lines from `.gitignore` if/when you want to bring one of those tabs back.

## Adding content

- **Publications**: either add a `.md` file directly to `_publications/`, or drop a `.bib` file in `files/` and run the `PubsFromBib.ipynb` / `pubsFromBib.py` script in `markdown_generator/` to generate the markdown files.
- **Projects**: add a `.md` file to `_projects/`, following the front-matter format of the theme (see the old academicpages portfolio examples for the fields it supports).
- **CV**: edit `_pages/cv.md` directly.
- **About**: edit `_pages/about.md`.
- **Photo**: add an image to `images/`, then set `author.avatar` in `_config.yml` to its filename.
- **Bio, social links, contact email**: fill in the `author:` block in `_config.yml`.

## Running locally

Requires Ruby + Bundler:

```bash
bundle install
bundle exec jekyll serve
```

Then open `http://localhost:4000`. Pushing to `main` builds and deploys automatically via GitHub Pages.

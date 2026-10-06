source 'https://rubygems.org'

group :jekyll_plugins do
  gem 'jekyll', '~> 4.3'
  gem 'jekyll-feed'
  gem 'jekyll-sitemap'
  gem 'jekyll-redirect-from'
  gem 'jemoji'
  gem 'webrick', '~> 1.8'
end

# Note: GitHub Pages' own build servers use their own pinned Jekyll version
# to actually deploy the site, independent of this Gemfile. We use a modern
# Jekyll here (instead of the `github-pages` gem, which pins Jekyll 3.9 /
# Liquid 4.0.3) purely so `bundle exec jekyll serve` works for local preview
# on current Ruby versions.

# Windows has no system timezone database; tzinfo needs this to work there.
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Ruby 3.4+ removed these from the default stdlib bundle, but jekyll
# still expects them to be present.
gem 'csv'
gem 'base64'
gem 'logger'
gem 'bigdecimal'

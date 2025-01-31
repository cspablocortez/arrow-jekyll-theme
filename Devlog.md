---
layout: page
title: Devlog
date: 2025-01-22
hidden: true
permalink: devlog
---

<time class="timestamp--date">2025-01-22</time>
<time class="timestamp--time">10:08 PM</time>
Starting the theme by modifying some of the old code I had set up in the old Github repo last year.


<time class="timestamp--date">2025-01-23</time>
<time class="timestamp--time">03:21 AM</time>
Defining the CSS variables for the theme.

<time class="timestamp--time">03:55 AM</time>
Leaving myself a reminder to support Jekyll tags first, then categories.

<time class="timestamp--time">03:59 AM</time>
I don't like how Jekyll embeds code blocks surrounded by Liquid tags within a `<figure>` element, so I've removed support for it, as figure elements are being used for images with captions.
    
<time class="timestamp--time">04:45 AM</time>
Added monokai theme for code blocks, and moved some navigation elements around.

<time class="timestamp--time">04:52 AM</time>
Still have to rethink footnotes.

<time class="timestamp--time">05:27 AM</time>
Now I'm working on installing a local version of the gem after pushing it to Github. I guess first I should update the links.

<time class="timestamp--time">05:50 AM</time>
Note: To include default index.md, posts.md, and devlog.md, I had to update the `spec.files` line to this:

```ruby
spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml|Devlog\.md|index\.md|posts\.md)!i) }
```

<time class="timestamp--time">06:32 AM</time>
**Update**: These files are not automatically included, so I will make sure to note that in the README.md

## Building Gem

```shell
$ gem build Arrow.gemspec
```

## Installing locally for testing

```shell
$ gem install ./arrow-jekyll-theme-0.1.0.gem
```

## Removing local gem

```shell
$ gem uninstall arrow-jekyll-theme
```

## Installing on new blog

After creating a new site (possibly with `$ jekyll new site-name`), update the `_config.yml` file with this line:

```yaml
theme: arrow-jekyll-theme
```

Also update your Gemfile:

```ruby
gem "arrow-jekyll-theme"
```

And then execute:

```shell
$ bundle install
```

## Finding where gem was installed

```shell
$ bundle info arrow-jekyll-theme 
```

## Build Your Site

```shell
$ bundle exec jekyll serve
```

<time class="timestamp--time">07:03 AM</time>
I just published the gem to RubyGems [here](https://rubygems.org/gems/arrow-jekyll-theme)


<time class="timestamp--time">07:22 AM</time>
I just noticed I forgot to update the link to the RSS feed. Fixing and pushing an update right now.

<time class="timestamp--time">07:40 AM</time>
Updating relative_url links for Github Pages deployment.

<time class="timestamp--time">07:51 AM</time>
Looks like I have to temporarily remove the base_url when developing locally.

<time class="timestamp--date">2025-01-24</time>
<time class="timestamp--time">09:07 AM</time>
For some reason the version of Jekyll renders this devlog differently on my machine and online. I'm gonna have to fix it asap.

<time class="timestamp--time">08:02 PM</time>
Lighter colored 
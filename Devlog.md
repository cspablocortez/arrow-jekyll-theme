---
layout: page
title: Devlog
date: 2025-01-22
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

## Building Gem

```shell
$ bundle install Arrow.gemspec
```

## Installing on new blog


---
title: Home
layout: default
---

<h1>{{ site.title }}</h1>

Arrow is a text-first Jekyll theme available as a Ruby gem. It features minimal CSS by relying on default browser stylesheets to produce highly readable, responsive websites and blogs. 

<h2>Latest Posts</h2>

<ul class="feed">
    {% for post in site.posts limit:3 %}
    <li class="feed-item">
    	<p class="feed-item__date"><time>{{ post.date | date: "%Y-%m-%d"}}</time></p>
    	<h1 class="feed-item__title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h1>
    </li>
    {% endfor %}
    
    <p style="margin-top: 1.5rem;"><a href="{{ '/posts' | relative_url }}">View all posts →</a></p>
</ul>

## Features
- Semantic HTML
- Modular CSS 
- SEO 
- Social Media cards created by default
- RSS Feed
- Responsive Design 📱
- Light / Dark mode ☀️ 
- Utility CSS classes for developers

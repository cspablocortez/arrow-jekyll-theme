---
layout: page
title: Posts
permalink: posts
---

<ul class="feed">
    {% for post in site.posts %}
    <li class="feed-item">
    	<p class="feed-item__date"><time>{{ post.date | date: "%Y-%m-%d"}}</time></p>
    	<h1 class="feed-item__title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h1>
    </li>
    {% endfor %}
</ul>
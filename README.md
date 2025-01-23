# Arrow

Arrow is a text-first Jekyll theme featuring minimal CSS by relying on default browser stylesheets to produce highly readable, responsive websites and blogs.

![Screenshot](https://i.ibb.co/CQsKPk8/2025-01-23-06-37-08-localhost-4aee2ad31133.png)

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "arrow-jekyll-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: arrow-jekyll-theme
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install arrow-jekyll-theme

## Usage

After installing the theme, you should copy the default markdown files into your Jekyll site.

```bash
cp -r path/to/arrow-jekyll-theme/*.md path/to/your-jekyll-site/
```

To find the correct path, run:

```shell
$ bundle info arrow-jekyll-theme 
```

This will add the following files to your site:

- index.md
- about.md
- post.md
- devlog.md

Feel free to change or delete any of these files as you see fit.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

## Layouts

By default, you will find three layout files:

- default.html
- page.html
- post.html

The only difference between the page and post layouts is for displaying the date. The devlog is built using the page layout. 

## Utility Classes

To make writing devlogs easier, the theme includes a couple of CSS utility classes:

- `.timestamp--time`
- `.timestamp--date`

For example, you can add a `<time>` element above a paragraph:
    
```html
<time class="timestamp--time">10:08 PM</time>
```

This will create a small timestamp element above paragraphs. This was created with the use of [TextMate Snippets](https://macromates.com/textmate/manual/snippets) in mind, but surely the functionality can be replicated with your text editor of choice.

## CSS

The CSS theme is minimal, mostly to improve readability and accessibility. There are three CSS files in the project.

- base.css
- article.css
- monokai.css

In the `base.css` file you will find variable definitions, media queries, and utility classes. The `article.css` file includes custom classes for styling blog posts. Custom CSS classes follow the [BEM methodology](https://en.bem.info/methodology/css/).

## Syntax Highlighting

By default, Arrow uses the Monokai [rouge](https://github.com/rouge-ruby/rouge) theme by inclusion of a CSS file from this list of [themes](https://github.com/brazacz/rouge-themes). These can be updated or deleted by following the instructions in the following section.

## Overriding Default Files

To override any theme file, you can either create it in your local development environment or update it directly by finding where bundle has installed the gem.

To do so, you must run:

```shell
$ bundle info arrow-jekyll-theme 
```

## Uninstalling 

To uninstall the theme using bundler:

```shell
$ gem uninstall arrow-jekyll-theme
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cspablocortez/arrow-jekyll-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## License

The theme is available as open source under the terms of the [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.en.html#license-text).

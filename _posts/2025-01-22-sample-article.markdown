---
layout: post
title: Sample Article in English
---

# Test Article for Arrow Theme

Welcome to this test article. This is a sample paragraph to get a feel of the typography and spacing for this theme. Arrow leverages default browser stylesheets and adds styling only when necessary to ensure responsive design or enhance navigation.

# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

After the headings, we take a look at elements we'd
normally use in an article.

## Lists

An unordered list looks like this:

- First item
- Second item
- Third item

An ordered list looks like this:

1. First item
2. Second item
3. Third item


## Media Elements

For my next number, I want to start by adding the different
types of media I would regularly add to my articles. First,
I'll start with images, which should ideally have captions.

### Images

Unfortunately, there are no images on the Standard Ebooks
edition of _Oz_ I read, and I'm not sure why since the images are
in the public domain too, I think.

The first story in the George Saunders book I started
earlier this week is called _In the Cart_ by Anton Chekhov. 

<figure>
    <img src="https://upload.wikimedia.org/wikipedia/commons/a/a7/Chekhov%27s_In_the_Cart_by_Apsit.jpg" alt="Ilustración de Alexander Apsit">
    <figcaption>Illustration by Alexander Apsit (1903)</figcaption>
</figure>




### YouTube

Next, we can embed a YouTube video. Here is what I'm
listening to as I write this.

<iframe width="560" height="315" src="https://www.youtube.com/embed/BCxTQq0UiFs?si=Byc-rH3weHLC2PwC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


### Spotify

I also listen to a lot of music, and if it's on Spotify,
it's handy to have it ready in a small embed widget.

<iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/180AbZduI6bYQIzwCHRwu9?utm_source=generator" width="100%" height="152" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>

## Blockquotes and Preformatted Text

According to the [MDN Article](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/blockquote) on blockquotes:

> The HTML blockquote Element (or HTML Block Quotation Element) indicates that the enclosed text is an extended quotation. Usually, this is rendered visually by indentation (see Notes for how to change it). A URL for the source of the quotation may be given using the cite attribute, while a text representation of the source can be given using the `<cite>` cite element.
    
As a programmer, it's important to also have well-defined
code blocks. For example, here's some code in Ruby, one
of my favorite programming languages.

```ruby
##
# Run WEBrick HTTP server.
#
#   ruby -run -e httpd -- [OPTION] [DocumentRoot]
#
#   --bind-address=ADDR         address to bind
#   --port=NUM                  listening port number
#   --max-clients=MAX           max number of simultaneous clients
#   --temp-dir=DIR              temporary directory
#   --do-not-reverse-lookup     disable reverse lookup
#   --request-timeout=SECOND    request timeout in seconds
#   --http-version=VERSION      HTTP version
#   --server-name=NAME          name of the server host
#   --server-software=NAME      name and version of the server
#   --ssl-certificate=CERT      The SSL certificate file for the server
#   --ssl-private-key=KEY       The SSL private key file for the server certificate
#   -v                          verbose
#

def httpd
  setup("", "BindAddress=ADDR", "Port=PORT", "MaxClients=NUM", "TempDir=DIR",
        "DoNotReverseLookup", "RequestTimeout=SECOND", "HTTPVersion=VERSION",
        "ServerName=NAME", "ServerSoftware=NAME",
        "SSLCertificate=CERT", "SSLPrivateKey=KEY") do
    |argv, options|
    begin
      require 'webrick'
    rescue LoadError
      abort "webrick is not found. You may need to `gem install webrick` to install webrick."
    end
    opt = options[:RequestTimeout] and options[:RequestTimeout] = opt.to_i
    [:Port, :MaxClients].each do |name|
      opt = options[name] and (options[name] = Integer(opt)) rescue nil
    end
    if cert = options[:SSLCertificate]
      key = options[:SSLPrivateKey] or
        raise "--ssl-private-key option must also be given"
      require 'webrick/https'
      options[:SSLEnable] = true
      options[:SSLCertificate] = OpenSSL::X509::Certificate.new(File.read(cert))
      options[:SSLPrivateKey] = OpenSSL::PKey.read(File.read(key))
      options[:Port] ||= 8443   # HTTPS Alternate
    end
    options[:Port] ||= 8080     # HTTP Alternate
    options[:DocumentRoot] = argv.shift || '.'
    s = nil
    options[:StartCallback] = proc {
      logger = s.logger
      logger.info("To access this server, open this URL in a browser:")
      s.listeners.each do |listener|
        if options[:SSLEnable]
          addr = listener.addr
          addr[3] = "127.0.0.1" if addr[3] == "0.0.0.0"
          addr[3] = "::1" if addr[3] == "::"
          logger.info("    https://#{Addrinfo.new(addr).inspect_sockaddr}")
        else
          logger.info("    http://#{listener.connect_address.inspect_sockaddr}")
        end
      end
    }
    s = WEBrick::HTTPServer.new(options)
    shut = proc {s.shutdown}
    siglist = %w"TERM QUIT"
    siglist.concat(%w"HUP INT") if STDIN.tty?
    siglist &= Signal.list.keys
    siglist.each do |sig|
      Signal.trap(sig, shut)
    end
    s.start
  end
end
```

Inline code elements can appear in a different color. Here's
a one-liner to start a server from the terminal: 
`$ ruby -run -e httpd`

### Footnotes

Lastly, it's important to ensure that footnotes work, since
I find myself using them quite a lot to link to external
sources whenever I'm discussing or researching something
at length.[^1]

[^1]: This is an example of a footnote.
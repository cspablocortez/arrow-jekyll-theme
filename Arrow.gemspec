# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "arrow-jekyll-theme"
  spec.version       = "0.1.2"
  spec.authors       = ["Pablo E. Cortez"]
  spec.email         = ["57056367+cspablocortez@users.noreply.github.com"]

  spec.summary       = "Arrow is a text-first Jekyll theme featuring minimal CSS by relying on default browser stylesheets to produce highly readable, responsive websites and blogs."
  spec.homepage      = "https://github.com/cspablocortez/Arrow-Theme"
  spec.license       = "GPL-3.0-or-later"
  
  spec.required_ruby_version = ">= 3.0"
  
  spec.files = `git ls-files -z`.split("\x0").select do |f|
      f.match(%r!^(assets|_(includes|layouts)/|(LICENSE|README|devlog|index|posts)((\.(txt|md|markdown)|$)))!i)
  end
  
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
  spec.add_development_dependency "jekyll", ">= 3.5", "< 4.4.0"

end

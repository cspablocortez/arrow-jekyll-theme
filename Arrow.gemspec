# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "Arrow"
  spec.version       = "0.1.0"
  spec.authors       = ["Pablo E. Cortez"]
  spec.email         = ["57056367+cspablocortez@users.noreply.github.com"]

  spec.summary       = "Arrow is a text-first Jekyll theme featuring minimal CSS by relying on default browser stylesheets to produce highly readable, responsive websites and blogs."
  spec.homepage      = "https://github.com/cspablocortez/Arrow-Theme"
  spec.license       = "GPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 4.4.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"

end

Gem::Specification.new do |s|
  s.name        = 'xcodeproj-sort'
  s.version     = '1.1.0'
  s.licenses    = ['MIT']
  s.summary     = "Sort your xcodeproj file in a pre-commit hook."
  s.description = %(
    Xcodeproj-sort provides a simple script to sort the objects in your .xcodeproj file.
    The script modifies the file and prints a message only if the file is modified, which
    makes it good for use in a pre-commit hook.
  ).strip.gsub(/\s+/, ' ')
  s.authors     = ["Noah Gilmore"]
  s.email       = 'noah.w.gilmore@gmail.com'
  s.files       = %w(README.md) + Dir['lib/**/*.rb']
  s.homepage    = 'https://github.com/noahsark769/xcodeproj-sort-pre-commit-hook'
  s.required_ruby_version = '>= 2.0.0'
  s.executables   = %w(xcodeproj-sort)
  s.add_runtime_dependency 'xcodeproj', '~> 1.14.0'
  s.add_runtime_dependency 'claide', '~> 1.0'
  s.metadata    = { "source_code_uri" => "https://github.com/noahsark769/xcodeproj-sort" }
end

# -*- encoding: utf-8 -*-
# stub: spork 1.0.0rc4 x86-mingw32 lib

Gem::Specification.new do |s|
  s.name = "spork"
  s.version = "1.0.0rc4"
  s.platform = "x86-mingw32"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tim Harper", "Donald Parish"]
  s.date = "2013-09-14"
  s.description = "A forking Drb spec server"
  s.email = ["timcharper+spork@gmail.com"]
  s.executables = ["spork"]
  s.extra_rdoc_files = ["MIT-LICENSE", "README.rdoc"]
  s.files = ["MIT-LICENSE", "README.rdoc", "bin/spork"]
  s.homepage = "http://github.com/sporkrb/spork"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rubygems_version = "2.2.2"
  s.summary = "spork"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<win32-process>, [">= 0"])
    else
      s.add_dependency(%q<win32-process>, [">= 0"])
    end
  else
    s.add_dependency(%q<win32-process>, [">= 0"])
  end
end

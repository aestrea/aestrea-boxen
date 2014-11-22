class groups::dev_jekyll {

  include groups::dev_ruby

  $version = "2.0.0"

  ruby_gem{ "bundler for ${version}":
    gem          => 'bundler',
    version      => '~> 1.2.0',
    ruby_version => $version
  }

  include homebrew
  package { 'libiconv': }

}

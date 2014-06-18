# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.6.1"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.101"
github "git",         "2.4.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.3"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.0.4"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# BROWSER
github "chrome",      "1.1.2"

# MAC
github "osx",         "2.7.0"
github "better_touch_tools",  "1.0.2", :repo => "bryanchug/puppet-better_touch_tools"

# TIME TRACKING
github "harvest",     "1.0.2"

# ENV
github "iterm2",      "1.1.1"
github "zsh",         "1.0.0"
#github "yadr",        "0.0.4", :repo => "luxerama/boxen-yadr"
#github "zshgitprompt","1.0.0"
github "autojump",    "1.0.0"
github "java",        "1.5.0"
github "mysql",       "5.6.19", :repo => "bryanchug/puppet-mysql"
github "gvm",         "1.0.1", :repo => "Spantree/puppet-gvm"

# DRIVE
github "googledrive", "1.0.2"

# IDE
github "intellij",    "1.5.1", :repo => "dieterdemeyer/puppet-intellij"
github "atom",        "1.0.0"
github "visualvm",    "1.3.6", :repo => "loyal3/puppet-visualvm"

# DESIGN
github "sketch",      "1.0.0", :repo => "goodtwin/puppet-sketch"

# TERMINAL UTILS
github "wget",        "1.0.1"

# MUSIC
#not working
#github "spotify",     "1.0.1"

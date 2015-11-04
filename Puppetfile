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
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.11.0"

# Support for default hiera data in modules

github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",    "0.0.6"
github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "3.0.2"
github "git",         "2.7.92"
github "go",          "2.1.0"
github "homebrew",    "1.13.0"
github "hub",         "1.4.1"
github "inifile",     "1.4.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.6.0"
github "nodejs",      "5.0.0"
github "openssl",     "1.0.0"
github "phantomjs",   "3.0.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.4.1"
github "ruby",        "8.5.3"
github "stdlib",      "4.7.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# BROWSER
github "chrome",      "1.2.0"
github "firefox",     "1.2.3"

# MAC
github "osx",         "2.7.2", :repo => "bryanchug/puppet-osx"
github "better_touch_tools",  "1.0.2", :repo => "bryanchug/puppet-better_touch_tools"

# TIME TRACKING
github "harvest",     "1.0.2"
github "toggl",       "1.0.5"

# ENV
github "iterm2",      "1.1.1"
github "zsh",         "1.0.0"
#github "yadr",        "0.0.4", :repo => "luxerama/boxen-yadr"
#github "zshgitprompt","1.0.0"
github "autojump",    "1.0.0"
github "java",        "1.7.1"
github "mysql",       "5.6.20", :repo => "bryanchug/puppet-mysql"
github "gvm",         "1.0.1", :repo => "Spantree/puppet-gvm"
github "github_for_mac", "1.0.2"

# DRIVE
github "googledrive", "1.0.2"

# IDE
github "intellij",    "1.5.1", :repo => "dieterdemeyer/puppet-intellij"
github "atom",        "1.0.0"
#github "visualvm",    "1.3.6", :repo => "loyal3/puppet-visualvm"

# DESIGN
github "sketch",      "1.0.0", :repo => "goodtwin/puppet-sketch"

# TERMINAL UTILS
github "wget",        "1.0.1"

# MEDIA
github "vlc",         "1.1.0"
github "popcorntime", "1.0.0", :repo => "josanastrid/puppet-popcorntime"

# MUSIC
#not working
#github "spotify",     "1.0.1"

# GAMES
github "minecraft",    "1.0.2"
github "steam",        "1.0.1"

# FILE SHARING
github "dropbox",       "1.4.1"

# github "elasticsearch", "2.8.0"
# github "mysql",         "2.0.1"
# github "postgresql",  "4.0.1"
# github "redis",       "3.1.0"
# github "sysctl",      "1.0.1"

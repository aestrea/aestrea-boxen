class people::bryanchug {

  include projects::aestrea_osx
  include projects::rocketmiles
  include projects::hotelstorm
  #include projects::atrax

  #include harvest
  #include toggl
  include sketch

	include git
	git::config::global { 'user.email':
	  value  => 'bryan.chug@gmail.com'
	}
	git::config::global { 'user.name':
	  value  => 'Bryan Chug'
	}

	$home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"
  $sanctum  = "${my}/sanctum"
  $importants  = "${my}/importants"

  file { $my:
    ensure  => directory
  }

  #repository { $sanctum:
  #  source  => 'bryanchug/sanctum',
  #  require => File[$my]
  #}

  #repository { $dotfiles:
  #  source  => 'bryanchug/dotfiles',
  #  require => File[$my]
  #}

  #repository { $importants:
  #  source  => 'bryanchug/importants',
  #  require => File[$my]
  #}

	include atom

  include homebrew
  package{ 'ansible': }
  # package{ 'tomcat': }

  #include minecraft
  include steam
}

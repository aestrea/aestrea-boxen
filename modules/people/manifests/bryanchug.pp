class people::bryanchug {

  include projects::rocketmiles
  include harvest
  include toggl
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

  file { $my:
    ensure  => directory
  }

  repository { $sanctum:
    source  => 'bryanchug/sanctum',
    require => File[$my]
  }

  repository { $dotfiles:
    source  => 'bryanchug/dotfiles',
    require => File[$my]
  }

	include atom

	#osx General
	include osx::global::enable_keyboard_control_access
	include osx::global::expand_print_dialog
	include osx::global::expand_save_dialog
	include osx::global::disable_remote_control_ir_receiver
	include osx::global::disable_autocorrect
	include osx::no_network_dsstores
	include osx::software_update

	#osx Dock
	include osx::dock::autohide
	include osx::dock::clear_dock

	#osx Finder
	include osx::finder::show_external_hard_drives_on_desktop
	include osx::finder::show_mounted_servers_on_desktop
	include osx::finder::show_removable_media_on_desktop
	include osx::finder::unhide_library
	include osx::finder::show_hidden_files
	include osx::finder::enable_quicklook_text_selection

	#osx Universal Access
	include osx::universal_access::ctrl_mod_zoom

	#osx Keyboard & Mouse
	include osx::global::tap_to_click
	include osx::global::key_repeat_delay
	include osx::global::key_repeat_rate
	include osx::global::natural_mouse_scrolling
	#todo -- add 3-finger drag

	#not working
	boxen::osx_defaults { 'Three-Finger Drag':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.threeFingerDragGesture',
    value  => 1,
    type   => int,
    user   => $::boxen_user;
  }

  include homebrew
  package{ 'ansible': }

}

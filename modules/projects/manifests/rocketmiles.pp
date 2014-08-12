class projects::rocketmiles {

  boxen::project{ 'rocketmiles':
		source => 'khelenek/noonu-app'
	}

  boxen::project{ 'rocketmiles-email':
		source => 'rocketmiles/rocketmiles-email'
	}

  nodejs::module { 'bower':
    node_version => 'v0.10'
  }

  nodejs::module { 'grunt-cli':
    node_version => 'v0.10'
  }

	boxen::project{ 'rocketmiles-web':
		source => 'rocketmiles/rocketmiles-web'
	}

  include homebrew
  package{
    'redis':
      ensure => '2.8.9'
  }

}

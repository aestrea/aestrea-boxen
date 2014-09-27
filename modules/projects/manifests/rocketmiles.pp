class projects::rocketmiles {

  include groups::dev
  include groups::dev_grails
  include groups::dev_node
  include groups::dev_ruby

  include sketch

  boxen::project{ 'rocketmiles':
		source => 'khelenek/noonu-app'
	}

  include mysql
  mysql::db{ 'noonu': }

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

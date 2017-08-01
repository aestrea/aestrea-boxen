class projects::rocketmiles {

  include groups::dev
  include groups::dev_grails
  include groups::dev_node
  include groups::dev_ruby

  include sketch

  boxen::project{ 'rocketmiles':
		source => 'rocketmiles/rocketmiles-app'
	}

  boxen::project{ 'rocketmiles-app.wiki':
		source => 'rocketmiles/rocketmiles-app.wiki'
	}

  #include mysql
  #mysql::db{ 'noonu': }

  boxen::project{ 'rocketmiles-email':
		source => 'rocketmiles/rocketmiles-email'
	}

  npm_module { 'bower':
    node_version => '4.3.0'
  }

  npm_module { 'grunt-cli':
    node_version => '4.3.0'
  }

	boxen::project{ 'rocketmiles-web':
		source => 'rocketmiles/rocketmiles-web'
	}

  boxen::project{ 'rocketmiles-frontend':
    source => 'rocketmiles/rocketmiles-frontend'
  }

  include homebrew
  package{
    'redis':
      ensure => '2.8.9'
  }

}

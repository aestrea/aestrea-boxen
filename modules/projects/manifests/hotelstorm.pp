class projects::hotelstorm {

  include groups::dev
  include groups::dev_grails
  include groups::dev_node
  include groups::dev_ruby

  include sketch

  boxen::project{ 'hotelstorm-app':
		source => 'rocketmiles/hotelstorm-app'
	}

  boxen::project{ 'hotelstorm-email':
		source => 'rocketmiles/hotelstorm-email'
	}

  npm_module { 'bower':
    node_version => '4.3.0'
  }

  npm_module { 'grunt-cli':
    node_version => '4.3.0'
  }

  boxen::project{ 'hotelstorm-frontend':
    source => 'rocketmiles/hotelstorm-frontend'
  }

  boxen::project{ 'hotelstorm-frontend-webpack':
    source => 'rocketmiles/hotelstorm-frontend-webpack'
  }

  include homebrew
  package{
    'redis':
      ensure => '2.8.9'
  }

  nodejs::version { '6.10.1': }

}

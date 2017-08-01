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

  boxen::project{ 'hotelstorm-frontend':
    source => 'rocketmiles/hotelstorm-frontend'
  }

  boxen::project{ 'hotelstorm-frontend-webpack':
    source => 'rocketmiles/hotelstorm-frontend-webpack'
  }

  include homebrew

  nodejs::version { '6.10.1': }

}

class projects::rocketmiles {

  boxen::project{ 'rocketmiles':
		source => 'khelenek/noonu-app',
		mysql => 'noonu'
	}

  boxen::project{ 'rocketmiles-email':
		source => 'rocketmiles/rocketmiles-email'
	}

	boxen::project{ 'rocketmiles-web':
		source => 'rocketmiles/rocketmiles-web'
	}

}

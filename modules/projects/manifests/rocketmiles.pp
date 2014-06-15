class projects::rocketmiles {
	boxen::project{ 'rocketmiles':
		source => 'khelenek/noonu-app',
		mysql => 'noonu'
	}
}

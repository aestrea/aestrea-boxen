class people::josanastrid {

  include projects::rocketmiles
  include projects::atrax
  include toggl
  include sketch
	include git

	$home     = "/Users/${::boxen_user}"

	include atom

}

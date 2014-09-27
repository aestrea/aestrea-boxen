class people::josanastrid {

  include projects::rocketmiles
  include toggl
  include sketch
	include git

	$home     = "/Users/${::boxen_user}"

	include atom

}

class people::bryanchug {

	include git
	git::config::global { 'user.email':
	  value  => 'bryan.chug@gmail.com'
	}
	git::config::global { 'user.name':
	  value  => 'Bryan Chug'
	}

}



class groups::dev_grails {

  include groups::dev

  # skipping java - weird shit
  #  include java
  
  include sdkman
  sdkman::groovy {'2.4.12': }
  sdkman::grails {'2.5.2':
    default => true
  }

}

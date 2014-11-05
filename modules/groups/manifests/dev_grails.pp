class groups::dev_grails {

  include groups::dev

  include java
  include gvm
  #gvm::groovy {'2.3.3': }
  #gvm::grails {'2.3.7': }
  gvm::grails {'2.3.9':
    default => true
  }

  class { 'intellij':
    edition => 'ultimate',
    version => '14'
  }

}

class groups::dev_node {

  include groups::dev

  class { 'nodejs::global':
    version => '4.3'
  }

}

class groups::dev_node {

  include groups::dev

  # node versions
  nodejs::version { 'v0.10': }

}

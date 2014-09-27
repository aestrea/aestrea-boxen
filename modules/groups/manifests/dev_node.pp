class groups::dev_node {

  include groups::dev

  # node versions
  include nodejs::v0_6
  include nodejs::v0_8
  include nodejs::v0_10

}

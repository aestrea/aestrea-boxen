class projects::attrax {

  include groups::dev_jekyll
  include groups::dev_grails
  include groups::dev_node
  include groups::dev_ruby

  include sketch

  nodejs::module { 'bower':
    node_version => 'v0.10'
  }

  nodejs::module { 'grunt-cli':
    node_version => 'v0.10'
  }

}

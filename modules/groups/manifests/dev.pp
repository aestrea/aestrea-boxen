class groups::dev {

  /* General Dev Stuffs */
  # Homebrew installs
  include homebrew
  package { 'watch': }
  package { 'w3m': }

  # Dev
  include github_for_mac

}

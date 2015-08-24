class people::borcean (
  $my_username  = $people::borcean::params::my_username,
  $my_homedir   = $people::borcean::params::my_homedir,
  $my_sourcedir = $people::borcean::params::my_sourcedir,
) inherits people::borcean::params {
  ## Declare all subclasses
  include people::borcean::applications
  include people::borcean::repositories
  }

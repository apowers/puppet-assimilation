# == Class: assimilation::cma::package
#
# Full description of class assimilation is in the README.
#
class assimilation::cma::package (
  $ensure         = $assimilation::cma::package_ensure,
  $package_name   = $assimilation::cma::package_name,
  $package_source = $assimilation::package_source,
) {
  exec { 'download_assimilation_package':
    command => "/usr/bin/wget ${package_source}/${package_name}.deb",
    cwd     => '/tmp',
    creates => "/tmp/${package_name}.deb",
  } ->
  exec { 'install_package':
    command => "/usr/bin/dpkg -i /tmp/${package_name}.deb",
    unless  => "/usr/bin/dpkg -l ${package_name}|/bin/grep -n 'ii'",
  }
}

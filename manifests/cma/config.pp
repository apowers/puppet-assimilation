# == Class: assimilation::cma::config
#
# Full description of class assimilation is in the README.
#
class assimilation::cma::config (
  $ensure      = $assimilation::cma::config_ensure,
  $options     = $assimilation::cma::config_options,
  $config_path  = $assimilation::cma::config_path,
  $config_file = $assimilation::cma::config_file,
) {
  $merged_options = merge($assimilation::defaults::default_cma_options, $options)
  $assignment_character = ' = '

  file { "${config_path}/${config_file}":
    ensure  => $ensure,
    mode    => '0440',
    content => template('assimilation/config.erb')
  }
}


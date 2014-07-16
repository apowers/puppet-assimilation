# == Class: assimilation::server::config
#
# Full description of class assimilation is in the README.
#
class assimilation::server::config (
  $ensure      = $assimilation::server::config_ensure,
  $options     = $assimilation::server::config_options,
  $config_path  = $assimilation::server::config_path,
  $config_file = $assimilation::server::config_file,
) {
  $merged_options = merge($assimilation::defaults::default_server_options, $options)
  $assignment_character = ' = '

  file { "${config_path}/${config_file}":
    ensure  => $ensure,
    mode    => '0440',
    content => template('assimilation/config.erb')
  }
}


# assimilation

This is the assimilation module.

# Requirements

* Puppetlabs/stdlib

  Neo4j installed and functional. See http://debian.neo4j.org/

## For more detailed instructions see
  http://linux-ha.org/source-doc/assimilation/html/_getting_started.html

# Installation

  puppet module install seattle-biomed/assimilation

# Synopsis

  Install and manage assimilation service.

# Parameters

- *config_ensure*  (Default: 'present')
- *config_options* (Default: Empty Hash)
- *package_ensure* (Default: 'true')
- *service_ensure* (Default: 'running')
- *service_enable* (Default: 'true')
- *version*        (Default: '0.1.3')
- *service_name*   (Default: 'nanoprobe')
- *package_name*   (Default: 'assimilation-nanoprobe-0.1.3-amd64')
- *package_source* (Default: Dynamicall built from facts)
- *config_path*    (Default: '/etc/defaults' or '/etc/sysconfig')
- *config_file*    (Default: 'nanoprobe')

# Examples

  Install the Nanoprobe:
    include 'assimilation'

  Install the CMA
    inlude 'assimilation::cma'

Parameterized Installation

  $config_options = {
    'NANOPROBE_DEBUG' => true,
  }

  class { '::assimilation':
    config_ensure  => 'present',
    config_options => $config_options,
    package_ensure => 'true',
    package_name   => 'assimilation-nanoprobe-0.1.2-amd64'
    service_ensure => 'running',
    service_enable => 'true',
  }

Installation with Hiera

  ---
  class:  - assimilation
  assimilation::config::ensure:  'present'
  assimilation::config::options:
    option: value
  assimilation::package::ensure:  'true'
  assimilation::service::ensure:  'running'
  assimilation::service::enable:  'true'

# License

  See LICENSE

# TODO

* Package installation is a big mess. Need to build an apt/rpm repository and use that.

# Support

Please log tickets and issues at our [Projects site](https://github.com/seattle-biomed/puppet-assimilation)

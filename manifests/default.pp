require apt
require nodejs

$deps = [ 'git', 'libssl-dev', 'redis-server', 'libexpat1-dev',
          'npm' ]
$npm_deps = [ 'coffee-script', 'hubot', 'hubot-irc' ]

package { $deps:
  ensure => 'installed',
  before => Package[$npm_deps]
}

package { $npm_deps:
  ensure => 'present',
  provider => 'npm',
}

# Because Debian packagers are nit pickers
file { '/usr/bin/node':
  ensure => 'link',
  target => '/usr/bin/nodejs',
}

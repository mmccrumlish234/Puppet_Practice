 # /puppet_src/modules/mongo/manifests/init.pp

class mongodb {
	exec { "apt-get update":
  	path => "/usr/bin",
	}

	package { "mongodb":
 	 ensure  => present,
 	 require => Exec["apt-get update"],
	}

	service { "mongodb":
 	 ensure  => "running",
 	 require => Package["mongodb"],
	}

	file { 'mongodb.conf':
	 path 	 => '/etc/mongodb.conf',
 	 ensure  => present,
 	 require => Package["mongodb"],
 	 notify  => Service["mongodb"],
	}
}


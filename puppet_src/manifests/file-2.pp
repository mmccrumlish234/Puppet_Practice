# /Puppet_Practice/puppet_src/manifests/file-2.pp

    file {'/tmp/test1':
      ensure  => file,
      content => "Hi.",
    }

    file {'/tmp/test2':
      ensure => directory,
      mode   => 0644,
    }

    file {'/tmp/test3':
      ensure => link,
      target => '/tmp/test1',
    }

    user {'mick':
      ensure => absent,
    }

    notify {"I'm notifying you.":}
    notify {"So am I!":}

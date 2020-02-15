node default {
  file {'/root/README':
    ensure => absent,
    # ensure  => file, 
    content => "This is site.pp",
    owner   => 'root',
  }
}



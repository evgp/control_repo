node default {
  file {'/root/README':
    ensure  => file,
    content => "This is site.pp",
    owner   => 'root',
  }
  
  file {'/root/README':
    owner   => 'root',
  }
}



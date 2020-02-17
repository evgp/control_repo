class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    # for education purposes
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvw4fGPergbyIcBkM8AGt+WmL0ZAWo79x4wadcYlKlhU9dNXFI6846kA0Z8pWoQ5jxA5nq/0hlXqlrD6Rg9srQVq8mostsyjNempssQgtbF7Smxkg+1l1ChrjG1m9hMuToIahkSShKrebBQI1/pGTZzgiOHFn8eDv9U3I+iM+nA6z/XfXYAT17MWimIQF+/Okzaf2TBJ5zIVnaJ+oq9LfaKk9BQ+y3h+ARE54WU/6kPqR9DBDikNnOpotvSuzZrqYLrz+Mr5S992+zM62GYnP1bbg4m5xsNVP53g+DHdSQ0YP3LUqar3SYtA0rbop+NSS+8q3WjMgnnPk2mFsPiOP1',
  }  
}

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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD1m6UhGnS0qvl9TduNDdH3mbcTYKSf1bWotQDwUAHYk2neTN0+zXRLLysikQF0rN1oD5sNMwglEDcmzaJTtD/Gp/lSG3e6eJ3Se2GNB+YXXohCKvZfii2s1J0UsjXaw1cxjXGD0CL//n72/JFqDTkEeRkh3p+6jMLux8PMqm7ky9LfqNan69FpLm4j65HufaBeCzafv6m2nFk+rVTezlaJf6aJbL4tO1EtPw1qJn80OT7PuVb1Hi5wnHzUoBy8ehbekNObjl+4LMOXqKWx9/maTns78QGGnEQs4V03I5+3Rdv4BvxWDv/eRxkpQVgBgwFitbktOQRbN2AwyLx1W++X',
  }  
}

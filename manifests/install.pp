# == Class route53dyn::install
#
# This class is called from route53dyn for install.
#
class route53dyn::install {

  if $::route53dyn::installtools {
    class { 'awscli': }
  }

  file { '/sbin/update-route53.sh':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0755',
    content => template('route53dyn/update-route53.sh.erb'),
  }
}

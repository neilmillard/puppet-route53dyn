# == Class route53dyn::params
#
# This class is meant to be called from route53dyn.
# It sets variables according to platform.
#
class route53dyn::params {
  case $::osfamily {
    'Debian': {
      $installtools = true
    }
    'RedHat': {
      $installtools = true
    }
    'Amazon': {
      $installtools = false
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}

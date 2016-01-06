# Class: route53dyn
# ===========================
#
# Full description of class route53dyn here.
#
# Parameters
# ----------
#
# * `cname`
#   This is the cname entry you want to update
#     e.g. hello.example.com
# * `zoneid`
#   Hosted Zone ID
#     e.g. BJBK35SKMM9OE
#
class route53dyn (
  $package_name = $::route53dyn::params::package_name,
  $service_name = $::route53dyn::params::service_name,
  $cname        = nil,
  $zoneid       = nil,
  $installtools = $::route53dyn::params::installtools,
) inherits ::route53dyn::params {

  # validate parameters here

  class { '::route53dyn::install': } ->
  class { '::route53dyn::config': } ~>
  Class['::route53dyn']
}

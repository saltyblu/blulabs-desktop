# Class: i3wm::config
# ===========================
#
# configures i3wm
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'i3wm::config':
#      user => blu,
#    }
#
# Authors
# -------
#
# Volker Schmitz <v.schmitz01@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2018 Volker Schmitz, unless otherwise noted.
#
class i3wm::config(
  $user => 'vschmi'
) {
  vcsrepo { "/home/$user/.config/i3":
    ensure   => present,
    provider => 'git',
    owner    => $user
    source   => 'git://github.com:vschmi/i3.git'
  }
}

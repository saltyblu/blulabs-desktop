class desktop {
  include desktop::install
  include desktop::config

  Class['desktop::install'] -> Class['desktop::config']
}

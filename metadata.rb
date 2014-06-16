name             "freeswitch-rayo"
maintainer       "Mojo Lingo LLC"
maintainer_email "ops@mojolingo.com"
license          "Apache 2.0"
description      "Installs/Configures FreeSWITCH"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe "freeswitch-rayo", "Install FreeSWITCH and configure as a Rayo server"

depends 'freeswitch', '~> 0.6.0'

supports "debian", ">= 6.0"
supports "ubuntu", ">= 12.04"
supports "centos", ">= 6.0"
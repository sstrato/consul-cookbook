name 'consul'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache v2.0'
description 'Installs/Configures Consul client, server and UI.'
long_description 'Installs/Configures Consul client, server and UI.'
version '0.9.0'

recipe 'consul', 'Installs and starts consul service.'
recipe 'consul::install_binary', 'Installs consul service from binary.'
recipe 'consul::install_source', 'Installs consul service from source.'
recipe 'consul::ui', 'Installs consul ui service.'

%w(redhat centos).each do |name|
  supports name, '~> 7.0'
  supports name, '~> 6.5'
end

supports 'ubuntu', '= 12.04'
supports 'ubuntu', '= 14.04'
supports 'arch'

recommends 'chef-provisioning'

depends 'libarchive'
depends 'golang', '~> 1.4'
depends 'runit'
depends 'yum-repoforge'

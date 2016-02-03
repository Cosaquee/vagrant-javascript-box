if ! dpkg -l | grep 'ii  puppet ' | grep -q $ver'.'; then
  # Install puppet agent - open source version
  wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
  dpkg -i puppetlabs-release-trusty.deb
  apt-get update
  apt-get install -y puppet
fi

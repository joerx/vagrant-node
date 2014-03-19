
class { 'nodejs':
  version => 'v0.10.26',
  make_install => false
}

package {"jasmine-node": 
  provider => "npm",
  require => Class["nodejs"]
}

package {"node-inspector":
  provider => "npm",
  require => Class["nodejs"]
}
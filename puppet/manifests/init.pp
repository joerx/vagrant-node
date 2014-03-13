
# class {"nodejs":}
class {"nodejs": manage_repo => true}

package {"jasmine-node": 
  provider => "npm",
  require => Class["nodejs"]
}
class jre {
package {'jre1.8.0_45-1.8.0_45-fcs.x86_64':

                   ensure => present,
                   provider => 'rpm',
                   install_options => ['-ivh'],
                   source => "/tmp/jre-8u45-linux-x64.rpm",
               }
file { "/tmp/jre-8u45-linux-x64.rpm":
                   source =>
"puppet:///modules/jre/jre-8u45-linux-x64.rpm"
  }
}

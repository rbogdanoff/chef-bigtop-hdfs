name             'bigtop-hdfs'
maintainer       'Ron Bogdanoff'
maintainer_email 'ron.bogdanoff@gmail.com'
license          'apache 2.0'
description      'hdfs cookbook for Apache Bigtop'
long_description 'hdfs cookbook for Apache Bigtop'
version          '0.8.0'

recipe 'base',   'Installs common "resources" needed by all of bigtop cookbooks'

%w( centos ).each do |os|
  supports os
end

depends 'java', '~> 1.29.0'

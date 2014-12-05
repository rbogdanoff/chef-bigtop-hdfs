name             'bigtop-hdfs'
maintainer       'Ron Bogdanoff'
maintainer_email 'ron.bogdanoff@gmail.com'
license          'apache 2.0'
description      'hdfs cookbook for Apache Bigtop'
long_description 'hdfs cookbook for Apache Bigtop'
version          '0.8.0'

%w( centos ).each do |os|
  supports os
end

depends 'java'

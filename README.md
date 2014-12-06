# chef-bigtop-hdfs-cookbook

[![Built on Travis](https://secure.travis-ci.org/rbogdanoff/chef-bigtop-hdfs.png)](http://travis-ci.org/rbogdanoff/chef-bigtop-hdfs)

### currently under development - not functional yet

### HDFS cookbook for Apache Bigtop - installs hadoop hdfs using version 0.8.0 of the Apache Bigtop distribution of hadoop (http://bigtop.apache.org/)

### this cookbook is being developed using the ChefDK
### what you need

* install VirtualBox https://www.virtualbox.org/

* install Vagrant https://www.vagrantup.com/

* install the vagrant berkshelf plugin
  `vagrant plugin install vagrant-berkshelf`

* install chefdk https://downloads.getchef.com/chef-dk/

* make sure the chefdk is in begining $PATH (edit your .bash_profile)
  `export PATH=/opt/chefdk/bin:/opt/chefdk/embedded/bin:$PATH`


## Supported Platforms

Centos

## Recipes

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>bigtop-hdfs:base</tt></td>
    <td>installs common 'resources' needed by all recipes</td>
  </tr>
</table>

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['bigtop-hdfs']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

TODO

##Testing
You can run the tests in this cookbook using thor:

```text
thor list               # start here to see what is available
thor cookbook:test      # runs lint and unit tests
thor cookbook:int_test  # runs integration tests (i.e. kitchen)
thor cookbook:test_all  # runs all tests
```

## License and Authors

Author:: Ron Bogdanoff (ron.bogdanoff@gmail.com)

# chef-bigtop-hdfs-cookbook

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

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-bigtop-base']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### chef-bigtop-hdfs::default

Include `bigtop-hdfs` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[bigtop-hdfs::default]"
  ]
}
```

## License and Authors

Author:: Ron Bogdanoff (ron.bogdanoff@gmail.com)

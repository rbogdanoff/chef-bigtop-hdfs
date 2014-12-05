# chef-bigtop-hdfs-cookbook

### currently under development.

HDFS cookbook for Apache Bigtop

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

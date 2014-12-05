# Copyright 2013-2014, Ron Bogdanoff
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# bigtop-hdfs:base - installs common 'resources' needed by hdfs and
# all other bigtop cookbook

# install java
node.set[:java][:install_flavor] = 'oracle'
node.set[:java][:oracle][:accept_oracle_download_terms] = true
include_recipe 'java::default'

# get the bigtop distibution repository
remote_file 'bigtop repository' do
  source node[:bigtop][:repo]
  path node[:bigtop][:repo_target]
  backup false
  owner  'root'
  group  'root'
  mode   '0644'
  action :create
end

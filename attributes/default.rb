#
# Author:: Ron Bogdanoff (<ron.bogdanoff@gmail.com>)
# Cookbook Name:: bigtop_base
# Attributes:: default
#
# Copyright 2014, Ron Bogdanoff
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
default['bigtop']['version']        = '0.8.0'

# bigtop archive
default['bigtop']['archive_base']   = 'http://archive.apache.org/dist/bigtop/'
default['bigtop']['archive']        = "#{node['bigtop']['archive_base']}bigtop-#{node['bigtop']['version']}/"
default['bigtop']['repo_base']      = "#{node['bigtop']['archive']}repos/"

# repos are platform dependent
case node['platform_family']
when 'rhel'
  default['bigtop']['repo_target'] = '/etc/yum.repos.d/bigtop.repo'
  case node['platform']
  when 'centos'
    default['bigtop']['repo'] = "#{node['bigtop']['repo_base']}centos6/bigtop.repo"
  end
end

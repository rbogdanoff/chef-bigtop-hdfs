require 'spec_helper'

describe 'bigtop-hdfs::base'  do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(platform: 'centos', version: '6.4')
                    .converge(described_recipe)
  end

 it 'includes the java default recipe' do
   expect(chef_run).to include_recipe('java::default')
 end

end
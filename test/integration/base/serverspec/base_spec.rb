require 'spec_helper'

describe 'bigtop-hdfs::base' do

  describe 'java' do
    describe 'is installed' do
  	  describe command('java') do
        its(:exit_status) { should eq 0 }
      end
    end
    describe 'is version 6' do
      describe command('java -version') do
        its(:stdout) { should match /java version "1\.6/}
        its(:stdout) { should match /Java\(TM\) SE Runtime Environment/}
      end
    end
  end

  describe 'bigtop repository' do
    describe 'downloaded' do
      describe file('/etc/yum.repos.d/bigtop.repo') do
        it { should be_file }
        it { should be_mode 644 }
        it { should be_owned_by 'root' }
        it { should be_grouped_into 'root' }
      end
    end
  end
end

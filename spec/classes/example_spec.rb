require 'spec_helper'

describe 'assimilation' do
  let(:title) { 'assimilation' }

  ['Debian', 'RedHat'].each do |osfamily|
    describe "assimilation class without any parameters on #{osfamily}" do 
      let(:params) {{ }}
      let(:facts) { { :osfamily => osfamily } }

      it { should create_class('assimilation') }
      it { should create_package('assimilation') }
      it { should create_file('/etc/assimilation.conf') }
      it {
        should create_file('/etc/assimilation.conf')\
        .with_content(/^server pool.assimilation.org$/)
      }
      if osfamily == 'RedHat' 
        it { should create_service('assimilationd') }
      else
        it { should create_service('assimilation') }
      end
    end
  end
end

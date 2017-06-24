require 'spec_helper'
describe 'filesntemplates' do
  context 'with default values for all parameters' do
    it { should contain_class('filesntemplates') }
  end
end

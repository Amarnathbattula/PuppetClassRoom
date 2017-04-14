require 'spec_helper'
describe 'firsttest' do
  context 'with default values for all parameters' do
    it { should contain_class('firsttest') }
  end
end

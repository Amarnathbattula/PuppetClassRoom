require 'spec_helper'
describe 'hiera_demo' do
  context 'with default values for all parameters' do
    it { should contain_class('hiera_demo') }
  end
end

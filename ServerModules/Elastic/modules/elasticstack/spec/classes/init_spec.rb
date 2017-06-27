require 'spec_helper'
describe 'elasticstack' do
  context 'with default values for all parameters' do
    it { should contain_class('elasticstack') }
  end
end

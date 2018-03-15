require 'spec_helper'
describe 'desktop' do
  context 'with default values for all parameters' do
    it { should contain_class('desktop') }
  end
end

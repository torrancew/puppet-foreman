require 'spec_helper'

describe 'foreman', :type => 'class' do
  it do
    should contain_class 'foreman::install'
    should contain_class 'foreman::configure'
    should contain_class 'foreman::service'
  end
end


# encoding: utf-8
require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'chef-handler-profiler::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }  

  it 'includes the chef_handler recipe' do
    expect(chef_run).to include_recipe('chef_handler')
  end

  it 'installs the chef_gem chef-handler-profiler' do
    expect(chef_run).to install_chef_gem('chef-handler-profiler')
  end
end

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

  it 'enables the chef-handler for profiler' do
    expect(chef_run).to enable_chef_handler(Chef::Handler::Profiler).with(
      source: 'chef/handler/chef_profiler'
      )
  end
end

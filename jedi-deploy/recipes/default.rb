# Cookbook Name:: jedi-deploy
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  opsworks_deploy do
    deploy_data deploy
    app application
  end
end

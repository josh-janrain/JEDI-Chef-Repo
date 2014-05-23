# Cookbook Name:: jedi-deploy
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'deploy'

node[:deploy].each do |application, deploy|
 opsworks_deploy_dir do
    user jedi
    group jedi
  end
  opsworks_deploy do
    deploy_data deploy
    app application
  end
end



#now start the service?
#if we were downloading from git we'd need to build with sbt an

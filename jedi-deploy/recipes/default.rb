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

link "/srv/www/jedi/current/scripts/jedi-upstart.conf" do
	to "/etc/init/jedi.conf"
	link_type :symbolic
end

file "/srv/www/jedi/current/scripts/jedi-cluster.sh" do
	owner "jedi"
	group "jedi"
	mode "0755"
end

file "/srv/www/jedi/current/scripts/jedi-service.sh" do
	owner "jedi"
	group "jedi"
	mode "0755"
end

file "/srv/www/jedi/current/scripts/jedi-upstart.sh" do
	owner "jedi"
	group "jedi"
	mode "0755"
end

file "/srv/www/jedi/current/scripts/start-jedi.sh" do
	owner "jedi"
	group "jedi"
	mode "0755"
end

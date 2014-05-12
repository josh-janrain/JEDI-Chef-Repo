#
# Cookbook Name:: ami-setup
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/opt/jedi/" do
        owner "ubuntu"
        group "ubuntu"
        action :create
end

directory "/var/jedi/" do
        owner "ubuntu"
        group "ubuntu"
        action :create
end

directory "/var/log/jedi/" do
        owner "ubuntu"
        group "ubuntu"
        action :create
end

user "jedi" do
        action :create
end

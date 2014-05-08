#
# Cookbook Name:: testapp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "python"

apt_package "curl" do
  action :install
end

apt_package "unzip" do
  action :install
end

apt_package "python-pip" do
  action :install
end

apt_package "openjdk-7-jre" do
  action :install
end

apt_package "build-essential" do
  action :install
end

apt_package "zookeeper" do
  action :install
end

apt_package "redis-server" do
  action :install
end

python_pip "awscli" do
  action :install
end

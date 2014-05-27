# Cookbook Name:: ami-setup
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "python"

user 'jedi' do
	action :create
end

directory "/opt/jedi" do
	owner "jedi"
	group "jedi"
	mode 00766
	action :create
end

directory "/var/jedi" do
	owner "jedi"
	group "jedi"
	mode 00766
	action :create
end

directory "/etc/opt/jedi" do
	owner "jedi"
	group "jedi"
	mode 00766
	action :create
end

directory "/var/log/jedi" do
	owner "jedi"
	group "jedi"
	mode 00766
	action :create
end

apt_package "curl" do
  action :install
end

apt_package "git" do
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

apt_package "libhawtjni-runtime-java" do
	action :install
end

apt_package "libjansi-native-java" do
	action :install
end

apt_package "jq" do
	version "1.3-1.1ubuntu1"
	action :install
end

apt_package "libjansi-java" do
	action :install
end

#remote_file "/tmp/scala-#{node[:scala][:version]}.deb" do
#	source "http://www.scala-lang.org/files/archive/scala-#{node[:scala][:version]}.deb"
#end
#
#dpkg_package "scala" do
#	source "/tmp/scala-#{node[:scala][:version]}.deb"
#	version "#{node[:scala][:version]}"
#	action :install
#end

remote_file "/tmp/sbt-#{node[:sbt][:version]}.deb" do
	source "http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/#{node[:sbt][:version]}/sbt.deb"
end

dpkg_package "sbt" do
	source "/tmp/sbt-#{node[:sbt][:version]}.deb"
	version "#{node[:sbt][:version]}"
	action :install
end

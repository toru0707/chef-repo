#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "toru0707" do
  home "/home/toru0707"
  shell "/bin/bash"
  #password "password"
  supports :manage_home => true
end

directory "/home/toru0707/.ssh" do
  owner "toru0707"
  group "toru0707"
  mode "0755"
  action :create
end

cookbook_file "/home/toru0707/.ssh/id_rsa" do
   
end

cookbook_file "/home/toru0707/.ssh/id_rsa.pub" do
  
end

git "/home/toru0707/test" do
  repo "git@192.168.0.8:inoko/test.git"
  user "toru0707"
  group "toru0707"
  action :checkout
end

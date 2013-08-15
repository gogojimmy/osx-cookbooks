#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2013, gogojimmy
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Google Chrome" do
  dmg_name "googlechrome"
  source "https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg"
  action :install
end

dmg_package "Dropbox" do
  volumes_dir "Dropbox Installer"
  source "http://www.dropbox.com/download?plat=mac"
  checksum "b4ea620ca22b0517b75753283ceb82326aca8bc3c86212fbf725de6446a96a13"
  action :install
end

dmg_package "Virtualbox" do
  source "http://dlc.sun.com.edgesuite.net/virtualbox/4.1.18/VirtualBox-4.1.18-78361-OSX.dmg"
  type "mpkg"
end

dmg_package "Vagrant" do
  source "http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/Vagrant-1.2.7.dmg"
  action :install
end

dmg_package "SourceTree" do
  source "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.6.3.1.dmg"
  action :install
end

node['packages'].each do |package|
  homebrew_package package
end

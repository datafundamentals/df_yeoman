#
# Cookbook Name:: df_yeoman
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# a silly step to keep doing but this makes sure to keep resetting
execute "re run chown on affected directories" do 
    command "chown -R vagrant:vagrant ~/.nvm && chown -R vagrant:vagrant /usr/local && chown -R vagrant:vagrant ~/npm-global"
    action :run
end

execute "prepare polymer dependencies" do 
    group "vagrant"
    user "vagrant"
    command "npm install -g yo bower grunt-cli gulp generator-polymer"
    action :run
end
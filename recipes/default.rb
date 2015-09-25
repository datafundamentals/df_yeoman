#
# Cookbook Name:: df_yeoman
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

execute "prepare polymer dependencies" do 
    command "npm install -g yo bower grunt-cli gulp generator-polymer"
    action :run
end

# a silly step to keep doing but this makes sure to keep resetting
execute "re run chown on affected directories" do 
    command "chown -R vagrant:vagrant /usr/local"
    action :run
end




template '/home/vagrant/nodePreReqs.sh' do
    owner "vagrant"
    group "vagrant"
    source 'nodePreReqs.sh.erb'
    mode "0777"
end

template '/home/vagrant/.profile' do
    owner "vagrant"
    group "vagrant"
    source 'dot_profile.erb'
    mode "0777"
end
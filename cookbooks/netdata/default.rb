package 'netdata'

service 'netdata' do
  action [:enable, :start]
end

remote_file '/etc/netdata/netdata.conf' do
  owner 'root'
  group 'root'
  mode '644'
  notifies :restart, 'service[netdata]'
end

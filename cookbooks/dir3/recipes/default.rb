include_recipe 'dir2::default'

directory "/home/ubuntu/dir1/dir2/dir3" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :create
  notifies :create, 'directory[/home/ubuntu/dir1/dir2/dir3/dir4]', :immediately
  notifies :create, 'directory[/home/ubuntu/dir1/dir2/dir3/dir4/dir5]', :immediately
end

directory "/home/ubuntu/dir1/dir2/dir3/dir4/dir5" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :create
end

directory "/home/ubuntu/dir1/dir2/dir3/dir4" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :create
end

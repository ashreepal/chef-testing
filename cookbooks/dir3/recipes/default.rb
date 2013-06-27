include_recipe 'dir2::default'

dir3_file = directory "/home/ubuntu/dir1/dir2/dir3" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :nothing
  # notifies :create, 'directory[/home/ubuntu/dir1/dir2/dir3/dir4]', :immediately
  # notifies :create, 'directory[/home/ubuntu/dir1/dir2/dir3/dir4/dir5]', :immediately
end

dir5_file = directory "/home/ubuntu/dir1/dir2/dir3/dir4/dir5" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :nothing
end

dir4_file = directory "/home/ubuntu/dir1/dir2/dir3/dir4" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :nothing
end

dir3_file.run_action(:create)

# substitute for the notify parameter
if dir3_file.updated_by_last_action?
  dir4_file.run_action(:create)
  dir5_file.run_action(:create)
end

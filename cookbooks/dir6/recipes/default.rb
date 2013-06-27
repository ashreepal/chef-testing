include_recipe 'dir3::default'

dir8_file = directory "/home/ubuntu/dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :nothing
end

dir7_file = directory "/home/ubuntu/dir1/dir2/dir3/dir4/dir5/dir6/dir7" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :nothing
end

dir6_file = directory "/home/ubuntu/dir1/dir2/dir3/dir4/dir5/dir6" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :nothing
end

dir6_file.run_action(:create)
dir7_file.run_action(:create)
dir8_file.run_action(:create)

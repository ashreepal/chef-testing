include_recipe 'dir1::default'

directory "/home/ubuntu/dir1/dir2" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :create

  only_if do
    ::File.exists?("/home/ubuntu/dir1")
  end
end

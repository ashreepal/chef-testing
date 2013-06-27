include_recipe 'dir1::default'

dir2_file = directory "/home/ubuntu/dir1/dir2" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :nothing

  only_if do
    ::File.exists?("/home/ubuntu/dir1")
  end
end

dir2_file.run_action(:create)

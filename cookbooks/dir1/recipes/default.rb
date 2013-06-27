dir1_file = directory "/home/ubuntu/dir1" do
  owner "ubuntu"
  group "ubuntu"
  mode '0755'
  action :nothing
end

dir1_file.run_action(:create)

%w{dir1 dir1/dir2 dir1/dir2/dir3}.each do |dir|
  directory "/home/ubuntu/#{dir}" do
    mode 0775
    owner "root"
    group "root"
    action :create
    recursive true
  end
end

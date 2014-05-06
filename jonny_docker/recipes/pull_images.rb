# Pull each of our defined apps

script "pull_app_#{name}_image" do
  interpreter "bash"
  user "root"
  code <<-EOH
    docker pull #{node[:jenkins][:image]}
  EOH
end

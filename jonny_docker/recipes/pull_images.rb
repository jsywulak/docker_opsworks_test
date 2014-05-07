# Pull each of our defined apps

script "pull_jenkins_image" do
  interpreter "bash"
  user "root"
  code <<-EOH
    docker pull #{node[:docker][:jenkins]}
  EOH
end

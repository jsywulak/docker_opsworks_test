script "run_jenkins_container" do
  interpreter "bash"
  user "root"
  code <<-EOH
    docker run -d -p 80:80 --name=jenkins #{node[:docker][:jenkins]}
  EOH
end

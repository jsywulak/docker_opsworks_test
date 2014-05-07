script "run_jenkins_container" do
  interpreter "bash"
  user "root"
  code <<-EOH
    docker run -d -p 80:8080 --name=jenkins #{node[:docker][:jenkins]}
  EOH
end

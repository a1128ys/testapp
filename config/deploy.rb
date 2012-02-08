set :application, "testapp"
set :repository,  "git://github.com/a1128ys/testapp.git"

set :scm, :git

role :web, "192.168.1.13"
role :web, "192.168.1.14"
role :app, "192.168.1.13"
role :app, "192.168.1.14"
#role :db,  "your primary db-server here", :primary => true
#role :db,  "your slave db-server here"

set :deploy_to, "/home/developer/#{application}"

#namespace :deploy do
#  task :start do ; end
#  task :restart do ; end
#  task :stop do ; end
#  task :restart, :roles => :app, :except => { :no_release => true } do
#    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#  end
#end

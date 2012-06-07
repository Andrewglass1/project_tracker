
require "bundler/capistrano"

server "2.2.2.2", :web, :app, :db, primary: true

set :application, "project_tracker"
set :repository,  "git@github.com:Andrewglass1/project_tracker.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :user, "vagrant"

set :deploy_to, "/vagrant/project_tracker"


role :web, "2.2.2.2"                          # Your HTTP server, Apache/etc
role :app, "2.2.2.2"                          # This may be the same as your `Web` server
role :db,  "2.2.2.2", :primary => true # This is where Rails migrations will run
role :db,  "2.2.2.2"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
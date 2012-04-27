class Project < ActiveRecord::Base
  attr_accessible :description, :git_hub, :name
end

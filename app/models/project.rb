class Project < ActiveRecord::Base
  attr_accessible :description, :git_hub, :name
  has_many :assignments
  has_many :users, through: :assignments
end

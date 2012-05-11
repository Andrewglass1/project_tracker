class Project < ActiveRecord::Base
  attr_accessible :description, :git_hub, :name, :max_users
  has_many :assignments
  has_many :users, :through => :assignments

  def add_user(user)
    user.projects << self
  end

  
end

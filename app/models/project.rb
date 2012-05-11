class Project < ActiveRecord::Base
  attr_accessible :description, :git_hub, :name, :max_users
  has_many :assignments
  has_many :users, :through => :assignments
  

  def add_user(user)
    unless user.on_project?(self)
      user.projects << self
    end
  end

  def is_full?
    if self.users.count >= max_users
      true
    else
      false
    end
  end

  def user_ids
    self.users.collect { |user| user.id }
  end
end

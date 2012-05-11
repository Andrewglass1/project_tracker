class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :password_confirmation, :username

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :assignments
  has_many :projects, :through => :assignments

  def on_project?(project)
    if project.user_ids.include?(id)
      true
    else
      false
    end
  end
end

class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :email, :full_name
  validates_uniqueness_of :email
  #validates :password, presence: { on: :create }

end

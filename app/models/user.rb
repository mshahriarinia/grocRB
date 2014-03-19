class User < ActiveRecord::Base
  has_many :bargains

  validates :name, :presence => true
  validates :password, :presence => true
  validates :email, :presence => true, uniqueness: { case_sensitive: false }
  validates :description, length: { maximum: 2000 }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end

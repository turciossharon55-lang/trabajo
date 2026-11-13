class User < ApplicationRecord
  validates_presence_of :name
  validates_format_of :name, with: /\A[a-zA-Z]+\z/
  validates :name, length: { maximum: 15 }, on: :create

  validates_presence_of :password
  validates_length_of :password, is: 8

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, with: /@/
end

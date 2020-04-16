class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts 
  has_many :comments

  validates_presence_of :name, :message => 'You Must Enter a Name'
  validates_presence_of :username, :message => 'You Must Enter a Userame'
  validates_uniqueness_of :username, :message => 'This username is taken'
end

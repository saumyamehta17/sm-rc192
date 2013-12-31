class User < ActiveRecord::Base
  attr_accessor :role
  #acts_as_authentic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles
  has_many :role_users
  has_many :roles, through: :role_users

  before_create :save_role_users

  def save_role_users
     debugger
  end
end

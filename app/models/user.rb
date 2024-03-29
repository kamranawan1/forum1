class User < ApplicationRecord
  

  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable

  has_many :forum_threads 
  has_many :forum_posts 


  def full_name 
  	self.first_name + " " + self.last_name
  end
end

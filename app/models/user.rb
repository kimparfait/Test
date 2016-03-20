class User < ActiveRecord::Base
	before_create :confirmation_token
	has_many :books
	has_many :reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         private
         def confirmation_token
         	if self.confirm_token.blank?
         		self.confirm_token = SecureRandom.urlsafe_based64.to_s
         	end
         end 

end

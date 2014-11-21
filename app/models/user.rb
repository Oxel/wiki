class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :mywikis, dependent: :destroy

  has_many :collaborations
	has_many :wiki_collaborations, through: :collaborations, source: :mywiki
  

 
  
end

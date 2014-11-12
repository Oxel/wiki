class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :collaborators
  has_many :mywikis, through: :collaborators, dependent: :destroy

  def collaborator?
  	role == 'collaborator'
  end
  
end

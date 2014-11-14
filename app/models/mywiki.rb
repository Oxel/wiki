class Mywiki < ActiveRecord::Base

  default_scope { order('created_at desc') }

	belongs_to :user
  
  has_many :collaborations
  has_many :collaborating_users, through: :collaborations, source: :user

	scope :visible_to, -> (user) { user ? all: where(public: true) }
	
end

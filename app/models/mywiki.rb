class Mywiki < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
=======

	belongs_to :user

	scope :visible_to, -> (user) { user ? all: where(public: true) }
	
>>>>>>> fa6d2e8fa259ef4ad174ddbce38a7d7c3a566b90
end

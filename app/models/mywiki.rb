class Mywiki < ActiveRecord::Base

  default_scope { order('created_at desc') }

	belongs_to :user

	scope :visible_to, -> (user) { user ? all: where(public: true) }
	
end

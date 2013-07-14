class User < ActiveRecord::Base
	validates_presence_of :password, :on => :create
	# attr_accessible :username, :email, :password
end

module ApplicationHelper
	
	def current_user
		if session[:user_id] 
			current_user ||= User.find(session[:user_id])
		end
	end

	def logged_in?
		current_user != nil 
	end

	def sign_in(user)
		cookies.permanent[:remember_token] = user.remember_token
		self.current_user = user
	end

	def sign_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end
	
end

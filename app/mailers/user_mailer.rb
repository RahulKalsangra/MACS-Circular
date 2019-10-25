class UserMailer < ApplicationMailer
	default from: 'siddharth.jmanit@gmail.com'
	
	def circular_email(user,id)
		@user = user
		@id = id
		if user.class==String
			mail(to: @user, subject: 'This is new circular')
		else	
			mail(to: @user.email, subject: 'This is new circular')
		end
	end
	
	def id

	end


end

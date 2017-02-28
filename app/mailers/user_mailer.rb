class UserMailer < ApplicationMailer

	default(
		from: "Admin <admin@tts-example.com>"
	)

	def welcome_email(user)
		@user = user
		@url = 'http://example.com/login'
		mail(to: @user.email, subject: 'Welcome to the Family!')
	end
end

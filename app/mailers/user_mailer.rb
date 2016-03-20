class UserMailer <ActionMailer::Bse
	  defaut :from=> "noreply@mydomain.com"

	   def registration_confirmation(user)
	   	@user=user
	   	mail(:to =>"#{user.name} <#{user.email}>", :subject =>"please confirm your registration" )
	   end 
	end 
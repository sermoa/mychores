class Invitation < ActiveRecord::Base

	belongs_to(:person) # people can invite other people ...
	belongs_to(:team) # ... into teams
	
end

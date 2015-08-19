module ProfilesHelper
	def lifestyle_option
		["Professional", "Blue collar", "Technology","Self employed","Religious","Political", "Party", "Cultural", "Public service", "Outdoors" , "Travel" , "Sports", "Fitness" , "Educational", "Family" , "Survivalist", "Music" , "Entertainer" , "Theatrical", "Foodie", "Vegetarian" , "Vegan", "Artistic", "Intellectual", "Beach", "Workaholic"]
	end
	def physicality_option
		["Tall", "Short", "Average height","Thin","Heavy","Average weight", "Physically challenged"] 
	end
	def sexual_orientation_option
		["Straight", "Gay", "Lesbian","Transgender","Bisexual"]
	end
	def commitment_option
		["Uncommitted ", "Seeking marriage and children", "Seeking marriage no children ","Transgender","Seeking commitment and children", "Seeking commitment no children", "Open marriage ", "Open commitment"]
	end
	def zodiac_sign_option
		['Aries', 'Taurus', 'Gemini', 'Cancer',"Leo","Virgo", "Libra", "Scorpio","Sagittarius", "Capricorn", "Aquarius", "Pisces"]
	end
	def age_option
		['18-28', '29-40', '41-65', '66-80']	
	end
	def country_option
		['US', 'UK', 'France', 'Italy', 'Australia', 'Netherlands', 'Germany', 'Norway', 'Sweden', 'Switzerland']
	end
end

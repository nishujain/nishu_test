module ProfilesHelper
	def lifestyle_option
		["Professional","Blue collar","Technology","Self employed","Religious","Political","Party","Cultura","Public service","Outdoors","Travel","Sports","Fitness","Educational","Family","Survivalist","Music","Entertainer","Theatrical","Foodie","Vegetarian","Vegan","Artistic","Intellectual","Beach","Workaholic"]
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
		['Aries - (April 15 – May 15)', 'Taurus - (May 16 – June 15)', 'Gemini - (June 16 – July 15)', 'Cancer - (July 16 – August 15)',"Leo - (August 16 – September 15)","Virgo - (September 16 – October 15)", "Libra - (October 16 – November 15)", "Scorpio - (November 16 – December 15)","Sagittarius - (December 16 – January 14)", "Capricorn - (January 15 – February 14)", "Aquarius - (February 15 – March 14)", "Pisces - (March 15 – April 14)"]
	end
	def age_option
		['18-28', '29-40', '41-65', '66-80']	
	end
	def country_option
		['US', 'UK', 'France', 'Italy', 'Australia', 'Netherlands', 'Germany', 'Norway', 'Sweden', 'Switzerland']
	end
end

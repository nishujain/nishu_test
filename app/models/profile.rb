class Profile < ActiveRecord::Base
	belongs_to :user
	validates :name, :age, :occupation, :sex, :physicality, :sexual_orientation, :lifestyle, :commitment, :marital_status, :country, :birthdate, presence: true
end

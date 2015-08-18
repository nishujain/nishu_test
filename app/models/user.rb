class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # validates :mobile_number, :numericality => {:only_integer => true}
  # validates_uniqueness_of :mobile_number
  # validates :mobile_number, presence: true
  has_one :profile
end

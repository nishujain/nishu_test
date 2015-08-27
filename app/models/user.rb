class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates_uniqueness_of :username
  has_one :profile, :dependent => :destroy
  has_many :payments, :dependent => :destroy
  
  def fullname
   "#{first_name} #{last_name}"
  end
end

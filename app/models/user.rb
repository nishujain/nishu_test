class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  # validates :mobile_number, :numericality => {:only_integer => true}
  validates_uniqueness_of :username
  # validates :mobile_number, presence: true
  has_one :profile, :dependent => :destroy
  
  def fullname
   "#{first_name} #{last_name}"
  end
end

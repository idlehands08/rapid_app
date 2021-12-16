class User < ApplicationRecord
  validates :email, presence: true, uniqueness: {scope: 'email', message: 'should be unique'}
  validates :name, presence: true
  validates :job_role, presence: true
  
  has_many :feedbacks
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

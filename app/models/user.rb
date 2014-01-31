class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :username, :email,
            :last_name, :dob, :role, :address,
            :phone, :sex,
            presence: true

  validates :username, :email, :phone,
            uniqueness: true

  validates :first_name, length: { in: 2..30 }
  validates :username, length: { in: 6..15 }
  validates :email, length: { in: 6..50 }
  validates :last_name, length: { in: 2..30 }
  validates :address, length: { maximum: 100 }
  validates :phone, length: { maximum: 14 }

end

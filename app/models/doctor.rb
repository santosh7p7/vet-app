class Doctor < ActiveRecord::Base
  attr_accessible :address, :city, :name, :school, :state, :practice_started, :zip
  has_many :appointments
  has_many :pets, through: :appointments
  validates :name, presence: true 
  validates :name, length: {maximum: 35}
  validates :zip,  length: {is: 5}
  validate :practice_started_not_100

  def years_in_practice
    Time.now.year - self.practice_started.year
  end

  def practice_started_not_100
     if Time.now.year - self.practice_started.year > 100
        errors.add(:practice_started, " this cannot be more than 100 years ago")
     end
  end
end

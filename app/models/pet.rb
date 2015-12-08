class Pet < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments
  has_many :doctors, through: :appointments
  attr_accessible :age, :breed, :name, :type, :weight

  validates :name, :age, :weight, presence: true
  validates :type, inclusion: {in: %w(dog cat bird)}
  validates :name, :breed, length: {maximum: 35}
end

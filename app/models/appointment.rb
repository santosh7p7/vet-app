class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :pet
  attr_accessible :appointment_date, :reason, :reminder, :doctor_id, :pet_id

  validates :reason, :appointment_date, presence: true  
  validate  :future_appointment_date 

  def future_appointment_date
    if self.appointment_date and self.appointment_date.past?
      errors.add(:future_appointment_date, " must be in future")
    end
  end 
end
  

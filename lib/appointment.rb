require_relative 'doctor'
require_relative 'patient'
class Appointment
  attr_accessor :doctor, :patient, :appointment

  def initialize(appointment, doctor)
    @doctor = doctor
    @appointment = appointment
    doctor.add_appointment(self)
  end

end
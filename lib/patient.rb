
require_relative 'appointment'
require_relative 'doctor'
class Patient
  attr_accessor :name, :appointment, :patient, :appointments

  def initialize(name)
   @name = name
   @appointments = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}.flatten.uniq
  end

end
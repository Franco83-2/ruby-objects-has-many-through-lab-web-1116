require_relative 'appointment'
require_relative 'patient'
class Doctor
  attr_accessor :name, :appointment, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    appointments << appt
    appt.doctor = self
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}.flatten.uniq
  end
end

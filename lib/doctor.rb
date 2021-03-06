
class Doctor

attr_accessor :name, :appointments, :patients

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end


  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
    self.appointments.map do |app|
      app.patient
    end
  end






end

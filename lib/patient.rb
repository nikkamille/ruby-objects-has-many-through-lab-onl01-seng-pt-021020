class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all {|appointment| appointment.patient == self }
  end
  
  def doctors
    
  end
  
end
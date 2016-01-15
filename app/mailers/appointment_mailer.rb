class AppointmentMailer < ApplicationMailer
  default from: ENV['MAIL_FROM']

  def new_appointment(appointment)
    @patient = appointment.patient
    @appointment = appointment
    mail(to: @patient.email, subject: 'Your upcoming appointment!')
  end
end

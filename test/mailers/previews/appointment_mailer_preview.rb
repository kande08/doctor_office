# Preview all emails at http://localhost:3000/rails/mailers/appointment_mailer
class AppointmentMailerPreview < ActionMailer::Preview
  def new_appointment_preview
    AppointmentMailer.new_appointment(Appointment.first)
  end
end

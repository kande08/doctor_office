class AppointmentsController < ApplicationController
  def index
  end

  def create
    appointment = Appointment.create(appointment_params)
    AppointmentMailer.new_appointment(appointment).deliver
    redirect_to root_path
  end

  private
    def appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :date)
    end
end

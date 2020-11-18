class Api::V1::AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :update, :destroy]
  before_action :set_patient, only: [:create, :patientAppointments]
  before_action :set_doctor, only: [:doctorAppointments]

  # GET /appointments
  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def patientAppointments
    @patient_appointments = @patient.appointments
    render json: @patient_appointments
  end

  def doctorAppointments
    @doctor_appointments = @doctor.appointments
    render json: @doctor_appointments
  end
  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
  def create
    @appointment = @patient.appointments.new(appointment_params)

    if @appointment.save
      render json: @appointment, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  def update
    if @appointment.update(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  def destroy
    @appointment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    def set_doctor
      @doctor = Doctor.find(params[:doctor_id])
    end

    # Only allow a trusted parameter "white list" through.
    def appointment_params
      params.require(:appointment).permit(:date, :appointment_time, :patient_id, :doctor_id)
    end
end

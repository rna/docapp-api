class Api::V1::AppointmentsController < ApplicationController
  before_action :authorize, only: %i[create update destroy]
  before_action :set_appointment, only: %i[show update destroy]
  before_action :set_patient, only: %i[create]

  # GET /appointments
  def index
    if params[:patient_id].present?
      @patient = Patient.find(params[:patient_id])
      @appointments = @patient.appointments.patient_appointments(@patient.id)
    end

    if params[:doctor_id].present?
      @doctor = Doctor.find(params[:doctor_id])
      @appointments = @doctor.appointments.doctor_appointments(@doctor.id)
    end

    render json: @appointments
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

  # Only allow a trusted parameter "white list" through.
  def appointment_params
    params.require(:appointment).permit(:schedule_id, :patient_id, :doctor_id)
  end
end

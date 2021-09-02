class Api::V1::PatientsController < ApplicationController
  before_action :authorize, only: %i[auto_login update destroy]
  before_action :set_patient, only: %i[show update destroy]

  # GET /patients
  def index
    @patients = Patient.all

    render json: @patients
  end

  # GET /patients/1
  def show
    render json: @patient
  end

  # POST /patients
  def create
    @patient = Patient.create(patient_params)

    if @patient.valid?
      token = encode_token({ patient_id: @patient.id })
      render json: { patient: @patient, token: token }
    else
      render json: { error: 'Email already registered' }
    end
  end

  def login
    @patient = Patient.find_by(email: patient_params[:email])

    if @patient&.authenticate(patient_params[:password])
      token = encode_token({ patient_id: @patient.id })
      render json: { patient: @patient, token: token }
    else
      render json: { error: 'Invalid username or password' }
    end
  end

  def auto_login
    token = encode_token({ patient_id: @patient.id })
    render json: { patient: @patient, token: token }
  end

  # PATCH/PUT /patients/1
  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patients/1
  def destroy
    @patient.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_patient
    @patient = Patient.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def patient_params
    params.require(:patient).permit(:name, :email, :password, :image)
  end
end

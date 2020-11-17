class Api::V1::SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :update, :destroy]
  before_action :set_doctor, only: [:index, :create]

  # GET /schedules
  def index
    @schedules = @doctor.schedules
    render json: @schedules
  end

  # GET /schedules/1
  def show
    render json: @schedule
  end

  # POST /schedules
  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      render json: @schedule, status: :created
    else
      render json: @schedule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schedules/1
  def update
    if @schedule.update(schedule_params)
      render json: @schedule
    else
      render json: @schedule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schedules/1
  def destroy
    @schedule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def set_doctor
      @doctor = Doctor.find(params[:doctor_id])
    end

    # Only allow a trusted parameter "white list" through.
    def schedule_params
      params.require(:schedule).permit(:start_date, :start_time, :end_date, :end_time, :interval, :doctor_id)
    end
end

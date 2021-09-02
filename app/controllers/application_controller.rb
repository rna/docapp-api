# rubocop:disable Style/GuardClause, Style/DoubleNegation
class ApplicationController < ActionController::API
  before_action :authorize

  def encode_token(payload)
    JWT.encode(payload, 'mysecretpass')
  end

  def authorization_header
    request.headers['Authorization']
  end

  def decode_token
    if authorization_header
      token = authorization_header.split(' ')[1]

      begin
        JWT.decode(token, 'mysecretpass', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def login_user
    if decode_token
      @patient_id = decode_token[0]['patient_id']
      @doctor_id = decode_token[0]['doctor_id']
      return @patient = Patient.find_by(id: @patient_id) if @patient_id
      return @doctor = Doctor.find_by(id: @doctor_id) if @doctor_id
    end
  end

  def user_logged_in?
    !!login_user
  end

  def authorize
    render json: { message: 'Please log in' }, status: :unauthorized unless user_logged_in?
  end
end
# rubocop:enable Style/GuardClause, Style/DoubleNegation

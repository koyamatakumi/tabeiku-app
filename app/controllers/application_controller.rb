class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :detect_devise_variant
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:nickname, :age_id, :gender_id, :taste, :profile]
    )
  end

  def detect_devise_variant  # (1)と同じ名前
    case request.user_agent
    when /iPad/
        request.variant = :tablet
    when /iPhone/
        request.variant = :mobile
    end
  end
end
class ApplicationController < ActionController::Base
  before_action :detect_devise_variant
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

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
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:nickname, :first_name, :last_name, :birth_date, :skill, :prefecture_id, :license, :airframe, :introduction])
  end

end

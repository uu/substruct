class ApplicationController < ActionController::Base
  include SubstructApplicationController  
  before_filter :set_substruct_view_defaults
  before_filter :get_nav_tags
  before_filter :find_customer          
  before_filter :set_locale

  def set_locale   
    session[:locale] = params[:locale] if params[:locale]
    I18n.locale = session[:locale] || I18n.default_locale
  end
end
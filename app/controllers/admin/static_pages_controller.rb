class Admin::StaticPagesController < Admin::ApplicationController 
	before_action :set_locale
  def home
  	
  end


  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  def default_url_options
    {locale: I18n.locale}
  end
end

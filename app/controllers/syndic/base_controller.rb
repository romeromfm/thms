class Syndic::BaseController < ApplicationController
  add_breadcrumb :index, :root_path
  layout 'syndic'

  before_filter :authenticate_user!
  before_filter :validate_user

  private
  def validate_user
    redirect_to root_url unless current_user.type == Syndic.name
  end
end

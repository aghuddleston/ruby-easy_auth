class LandingController < ApplicationController
  before_filter :redirect_to_dashboard_if_signed_in, only: [:show]

  def index
  end

  private

  def redirect_to_dashboard_if_signed_in
    if user_signed_in?
      redirect_to dashboard_url
    end
  end
end

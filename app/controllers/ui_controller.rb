class UiController < ApplicationController
  # don't show mockups if in production
  before_filter do
    redirect_to :root if Rails.env.production?
  end

  layout "application"

  def index
  end
end

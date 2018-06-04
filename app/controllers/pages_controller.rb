class PagesController < ApplicationController
  def index
    @sessions = LoginActivity.all
  end
end

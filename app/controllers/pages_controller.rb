require 'browser/aliases'

class PagesController < ApplicationController
  Browser::Base.include(Browser::Aliases)

  def index
    @sessions = LoginActivity.all
  end

  def browser
    @browser = Browser.new(
      request.env['HTTP_USER_AGENT'],
      accept_language: request.env['HTTP_ACCEPT_LANGUAGE']
    )
  end
end

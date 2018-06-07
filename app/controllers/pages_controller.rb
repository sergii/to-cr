require 'browser/aliases'

class PagesController < ApplicationController
  Browser::Base.include(Browser::Aliases)

  def sessions
    @sessions = LoginActivity.order_by_newest
  end

  def sessions_tailored
    @sessions = LoginActivity.order_by_newest
  end

  def browser
    @browser = Browser.new(
      request.env['HTTP_USER_AGENT'],
      accept_language: request.env['HTTP_ACCEPT_LANGUAGE']
    )
  end

  def device_detector
    @client = DeviceDetector.new(request.env['HTTP_USER_AGENT'])
  end

  def user_agent_parser
    @user_agent_parser = UserAgentParser.parse(request.env['HTTP_USER_AGENT'])
  end

  def useragent
    @user_agent = UserAgent.parse(request.env['HTTP_USER_AGENT'])
  end
end

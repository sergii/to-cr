module PagesHelper
  def browser(user_agent)
    Browser.new(user_agent)
  end
end

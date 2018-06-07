module LoginActivityHelper
  def client(user_agent)
    client = DeviceDetector.new(user_agent)

    device_type     = client.device_type.capitalize
    os_name         = client.os_name.capitalize
    name            = client.name.capitalize
    os_full_version = client.full_version.capitalize

    "#{device_type} (#{os_name}), #{name} #{os_full_version}"
  end

  def strategy(strategy)
    case strategy
    when 'database_authenticatable' then 'Email'
    when 'google_oauth2' then 'Google'
    else 'Undefined strategy'
    end
  end

  def context(context)
    case context
    when 'devise/sessions#create' then 'Login'
    when 'devise/sessions#destroy' then 'Logout'
    when 'devise/registrations#create' then 'Registration'
    when 'users/omniauth_callbacks#google_oauth2' then 'Login'
    else 'Undefined context'
    end
  end
end

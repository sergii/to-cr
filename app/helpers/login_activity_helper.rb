module LoginActivityHelper
  def client(user_agent)
    client = DeviceDetector.new(user_agent)

    device_type     = client.device_type.capitalize
    os_name         = client.os_name.capitalize
    name            = client.name.capitalize
    os_full_version = client.full_version.capitalize

    "#{device_type} (#{os_name}), #{name} #{os_full_version}"
  end
end

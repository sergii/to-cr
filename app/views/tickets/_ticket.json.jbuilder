json.extract! ticket, :id, :url, :note, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

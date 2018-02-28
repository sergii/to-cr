class Ticket < ApplicationRecord
  scope :desc, -> { order("tickets.created_at DESC") }
end

class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :url
      t.string :note

      t.timestamps
    end
  end
end

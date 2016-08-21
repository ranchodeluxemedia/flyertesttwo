class AddEventIdToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :event_id, :integer
  end
end

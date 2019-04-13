class AddEventToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :event, :string
  end
end

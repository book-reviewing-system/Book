class AddActionIdToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :action_id, :integer
  end
end

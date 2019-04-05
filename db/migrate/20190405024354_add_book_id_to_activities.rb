class AddBookIdToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :book_id, :integer
  end
end

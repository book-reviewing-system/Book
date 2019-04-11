class ChangeActionTypeTypeInActivites < ActiveRecord::Migration[5.2]
  def change
  	change_column :activities, :action_type, :string
  end
end

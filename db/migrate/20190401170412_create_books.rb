class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :number_of_pages
      t.string :author
      t.string :image
      t.datetime :published_date
      t.integer :status

      t.timestamps
    end
  end
end

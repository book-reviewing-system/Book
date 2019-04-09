class CreateUserBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_books do |t|
      t.integer :book_id
      t.integer :user_id
      t.integer :read, default: 0
      t.integer :reading, default: 0
      t.integer :favorite, default: 0
      t.integer :request, default: 0

      t.timestamps
    end
  end
end

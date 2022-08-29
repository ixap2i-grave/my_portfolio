class CreateBook < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.integer :isbn
      t.references :category
      t.timestamps
    end
  end
end

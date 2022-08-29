class CreateTag < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.references :category
      t.string :body

      t.timestamps
    end
  end
end

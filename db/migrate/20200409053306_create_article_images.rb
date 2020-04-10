class CreateArticleImages < ActiveRecord::Migration[6.0]
  def change
    create_table :article_images do |t|
      t.string :image_url
      t.integer :article_id

      t.timestamps
    end
  end
end

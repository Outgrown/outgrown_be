class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.integer :status, default: 0
      t.string :image_link
      t.string :alt_image
      t.string :article_type
      t.integer :age_group
      t.string :color
      t.integer :gender
      t.integer :condition
      t.string :description
      t.integer :price
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

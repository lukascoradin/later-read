class CreateSavedArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :saved_articles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :url

      t.timestamps
    end

    add_index :saved_articles, [:user_id, :url], unique: true
  end
end

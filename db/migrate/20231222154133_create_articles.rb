class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.text :content
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
    add_index :articles, [:author_id, :created_at]
  end
end

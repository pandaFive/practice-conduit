class AddTitleDescriptionToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :title, :text
    add_column :articles, :description, :text
  end
  add_index :articles, [:title]
end

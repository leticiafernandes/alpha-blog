class DropColumnFromArticles < ActiveRecord::Migration[5.1]
  def change
  	remove_column :articles, :update_at, :datetime
  end
end

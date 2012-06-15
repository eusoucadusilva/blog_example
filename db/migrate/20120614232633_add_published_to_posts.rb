class AddPublishedToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :published, :boolean
  end

  def down
    remove_column :posts, :published
  end
end

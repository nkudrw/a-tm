class AddLikesCountToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :likes_count, :integer
  end
end

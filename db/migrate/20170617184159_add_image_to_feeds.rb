class AddImageToFeeds < ActiveRecord::Migration[5.1]
  def change
    add_column :feeds, :image, :string
  end
end

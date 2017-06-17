class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
      t.references :user
      t.text :body

      t.timestamps
    end
  end
end

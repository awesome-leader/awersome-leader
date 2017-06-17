class CreateAwesomes < ActiveRecord::Migration[5.1]
  def change
    create_table :awesomes do |t|
      t.references :user, foreign_key: true
      t.references :feed, foreign_key: true

      t.timestamps
    end
  end
end

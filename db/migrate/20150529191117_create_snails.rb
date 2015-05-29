class CreateSnails < ActiveRecord::Migration
  def change
    create_table :snails do |t|
      t.string :name
      t.string :gender
      t.string :location
      t.string :spirit
      t.string :animal
      t.string :greatest
      t.string :accomplishment
      t.string :password_digest

      t.timestamps
    end
  end
end

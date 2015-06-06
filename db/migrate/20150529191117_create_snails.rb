class CreateSnails < ActiveRecord::Migration
  def change
    create_table :snails do |t|
      t.string :name
      t.string :gender
      t.string :location
      t.string :spirit_animal
      t.string :greatest_accomplishment
      t.string :password_digest

      t.timestamps
    end
  end
end

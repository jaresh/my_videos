class CreateFilmies < ActiveRecord::Migration
  def change
    create_table :filmies do |t|
      t.string :nazwa
      t.string :gatunek
      t.integer :rok

      t.timestamps
    end
  end
end

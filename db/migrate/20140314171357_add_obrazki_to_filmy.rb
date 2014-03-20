class AddObrazkiToFilmy < ActiveRecord::Migration
  def change
    add_column :filmies, :obrazki, :string
  end
end

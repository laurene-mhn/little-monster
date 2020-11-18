class RenameAnimalLocationToAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :animals, :location, :address
  end
end

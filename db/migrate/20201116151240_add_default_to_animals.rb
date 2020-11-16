class AddDefaultToAnimals < ActiveRecord::Migration[6.0]
  def change
    change_column :animals, :availability, :boolean, default: true
  end
end

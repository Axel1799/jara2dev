class CreateMarcas < ActiveRecord::Migration[6.0]
  def change
    create_table :marcas do |t|
      t.string :nombre      
      t.timestamps
    end
    add_index :marcas, :nombre, unique: true
  end
end

class CreateImagenes < ActiveRecord::Migration
  def change
    create_table :imagenes do |t|
      t.string :texto
      t.text :description

      t.timestamps
    end
  end
end

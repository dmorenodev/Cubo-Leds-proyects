class CreateVideeoos < ActiveRecord::Migration
  def change
    create_table :videeoos do |t|
      t.string :Titulo
      t.text :Descripcion
      t.string :Url
      t.string :Subido_por

      t.timestamps
    end
  end
end

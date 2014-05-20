class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :Nombre
      t.string :Email
      t.string :Asunto
      t.text :Body

      t.timestamps
    end
  end
end

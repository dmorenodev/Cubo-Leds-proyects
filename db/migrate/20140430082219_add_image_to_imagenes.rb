class AddImageToImagenes < ActiveRecord::Migration
  def change
    add_column :imagenes, :image, :string
  end
end

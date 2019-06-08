class AddProductIdToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :product_id, :integer
  end
end

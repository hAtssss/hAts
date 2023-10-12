class AddImageToscoreups < ActiveRecord::Migration[6.1]
  def change
    add_column :scoreups, :image, :string
  end
end

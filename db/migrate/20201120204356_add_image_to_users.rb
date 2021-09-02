class AddImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :image, :string
    add_column :doctors, :image, :string
  end
end

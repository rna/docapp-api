class AddPasswordDigestToDoctors < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :password_digest, :string
  end
end

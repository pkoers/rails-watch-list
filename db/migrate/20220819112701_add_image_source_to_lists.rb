class AddImageSourceToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :thumbnail, :string
  end
end

class AddImageToGirl < ActiveRecord::Migration[7.0]
  def change
    add_column :girls, :image, :string
  end
end

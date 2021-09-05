class AddColumnItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :is_active, :boolean, default: false, null: false
  end
end

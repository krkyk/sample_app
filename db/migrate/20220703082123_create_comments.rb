class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :name
      t.integer :list_id

      t.timestamps
    end
  end
end

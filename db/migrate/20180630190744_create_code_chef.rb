class CreateCodeChef < ActiveRecord::Migration[5.2]
  def change
    create_table :code_chef, id: false do |t|
      t.string :code, null: false
      t.string :name
      t.string :start_time
      t.string :end_time

      # t.timestamps
    end

    add_index :code_chef, :code, unique: true
  end
end
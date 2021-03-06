class CreateClocks < ActiveRecord::Migration[5.0]
  def change
    create_table :clocks do |t|
      t.references :user, null: false
      t.text :description
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end

    add_index :clocks, :created_at
  end
end

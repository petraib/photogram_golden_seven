class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :held_on
      t.text :description

      t.timestamps
    end
  end
end

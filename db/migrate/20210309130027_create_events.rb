class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.text :descrption
      t.datetime :date

      t.timestamps
    end
  end
end

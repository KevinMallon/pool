class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end

class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.integer :interval
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

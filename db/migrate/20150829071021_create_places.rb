class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :role
      t.date :start_date
      t.date :end_date
      t.string :place_url

      t.timestamps null: false
    end
  end
end

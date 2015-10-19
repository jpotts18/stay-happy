class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.date :birthday
      t.integer :checkin_hour
      t.integer :checkin_minute
      t.string :timezone

      t.timestamps null: false
    end
  end
end

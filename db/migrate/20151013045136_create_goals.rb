class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.string :type
      t.belongs_to :user, index: true, foreign_key: true
      t.date :end_date

      t.timestamps null: false
    end
  end
end

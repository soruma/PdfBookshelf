class CreateLends < ActiveRecord::Migration[5.0]
  def change
    create_table :lends do |t|
      t.belongs_to :user
      t.date :lending_date
      t.date :rental_deadline

      t.timestamps
    end
  end
end

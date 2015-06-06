class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :date

      t.timestamps null: false
    end
  end
end

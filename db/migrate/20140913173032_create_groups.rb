class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :start_time #as hour of the day (1 = 1am 23 = 11pm 24 = midnight)
      t.integer :duration #in minutes
      t.string :name
    end
  end
end

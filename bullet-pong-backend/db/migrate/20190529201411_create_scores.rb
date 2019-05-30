class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :player_id
      t.integer :number

      t.timestamps
    end
  end
end

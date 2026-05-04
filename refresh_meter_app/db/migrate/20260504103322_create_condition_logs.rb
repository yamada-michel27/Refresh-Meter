class CreateConditionLogs < ActiveRecord::Migration[8.1]
  def change
    create_table :condition_logs do |t|
      t.integer :fatigue, null: false
      t.integer :stress, null: false
      t.decimal :sleep_hours, null: false, precision: 4, scale: 1
      t.integer :daytime_outings, null: false, default: 0
      t.integer :night_outings, null: false, default: 0
      t.integer :work_difficulty, null: false
      t.string :mood, null: false
      t.date :last_sauna_date
      t.date :last_movie_date
      t.date :last_karaoke_date
      t.datetime :recorded_at, null: false

      t.timestamps
    end
  end
end

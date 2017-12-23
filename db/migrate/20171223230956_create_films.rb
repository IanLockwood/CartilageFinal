class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :name, null: false
      t.text :synopsis
      t.string :trailer_url
      t.string :poster_url
      t.string :press_url
      t.string :release_date
      t.text :theater_dates
      t.text :past_dates

      t.timestamps null: false
    end
  end
end

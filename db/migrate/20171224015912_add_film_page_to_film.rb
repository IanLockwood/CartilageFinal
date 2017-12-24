class AddFilmPageToFilm < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :film_page, :boolean, default: false
  end
end

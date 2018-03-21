class AddSlugToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :slug, :string, unique: true
  end
end

class AddArchivedToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :archived, :boolean, default: false
  end
end

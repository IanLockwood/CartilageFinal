class AddFeaturedToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :featured, :boolean, default: false
  end
end

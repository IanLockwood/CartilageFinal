class AddOffsiteLinkToFilm < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :offsite_link, :string
  end
end

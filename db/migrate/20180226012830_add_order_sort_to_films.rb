class AddOrderSortToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :order_sort, :integer, default: 0
  end
end

class AddCountryToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column(:reviews, :country, :string)
  end
end

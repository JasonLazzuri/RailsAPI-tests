class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :content, :string
      t.column :author, :string
    end
  end
end

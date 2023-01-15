class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.string :genre
      t.string :year
      t.string :country
      t.string :published_at
      t.string :description

      t.timestamps
    end
  end
end

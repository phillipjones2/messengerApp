class CreateMovieQuotes < ActiveRecord::Migration
  def change
    create_table :movie_quotes do |t|
      t.string :source
      t.string :quote
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

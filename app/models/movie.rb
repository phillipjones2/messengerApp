class Movie < ActiveRecord::Base
  has_many :parts
  has_many :actors, through: :parts
  has_many :movie_quotes
  
end

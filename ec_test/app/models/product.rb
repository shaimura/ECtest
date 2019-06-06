class Product < ApplicationRecord

	has_many :artist
	has_many :genre
	has_many :label

	accepts_nested_attributes_for :artist, :genre, :label

end

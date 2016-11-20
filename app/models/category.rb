class Category < ActiveRecord::Base
	has_many :topics, dependent: :destroy
	has_many :seasons, dependent: :destroy
	has_many :episodes, dependent: :destroy
end

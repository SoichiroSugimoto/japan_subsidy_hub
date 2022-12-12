class Industory < ApplicationRecord
	has_many :subsidy_industories
	has_many :subsidies, through: :subsidy_industories
end

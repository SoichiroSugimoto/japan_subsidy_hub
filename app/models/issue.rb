class Issue < ApplicationRecord
	has_many :subsidy_issues
	has_many :subsidies, through: :subsidy_issues
end

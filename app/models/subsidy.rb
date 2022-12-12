class Subsidy < ApplicationRecord
	has_many :subsidy_business_stages
	has_many :business_stages, through: :subsidy_business_stages
	has_many :subsidy_industories
	has_many :industories, through: :subsidy_industories
	has_many :subsidy_issues
	has_many :issues, through: :subsidy_issues
	has_many :subsidy_support_types
	has_many :support_types, through: :subsidy_support_types
end

class BusinessStage < ApplicationRecord
	has_many :subsidy_business_stages
	has_many :subsidies, through: :subsidy_business_stages
end

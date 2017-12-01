class Reputation < ApplicationRecord
	belongs_to :reputatable, polymorphic: true

	belongs_to :user
end

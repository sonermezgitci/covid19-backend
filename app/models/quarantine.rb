class Quarantine < ApplicationRecord
  belongs_to :user, dependent: :destroy
end

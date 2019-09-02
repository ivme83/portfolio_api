class AcceptedSla < ApplicationRecord
  belongs_to :merchants
  belongs_to :sla_versions
end

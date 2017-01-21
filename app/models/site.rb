class Site < ApplicationRecord
  belongs_to :customer
  has_many :dumpsters
  has_many :work_orders
end

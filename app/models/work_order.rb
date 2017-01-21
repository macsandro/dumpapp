class WorkOrder < ApplicationRecord
  belongs_to :work_order_status
  belongs_to :site
  belongs_to :driver
end


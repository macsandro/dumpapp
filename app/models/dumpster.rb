class Dumpster < ApplicationRecord
  belongs_to :dumpster_type
  belongs_to :site  
end

class Supplier < ApplicationRecord
has_many :products #returns a products array, assumes product has a foreign key (supplier_id)
end

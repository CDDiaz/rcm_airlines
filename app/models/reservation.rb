class Reservation < ApplicationRecord
  belongs_to :user , :optional => true
  belongs_to :flights, :optional => true
end
